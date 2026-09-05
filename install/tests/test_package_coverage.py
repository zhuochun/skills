"""Run both installers against isolated package catalogs; never install links."""

from pathlib import Path
from contextlib import contextmanager
import os
import shutil
import subprocess
import tempfile
import time
import unittest


@contextmanager
def temporary_catalog():
    directory = tempfile.TemporaryDirectory(prefix='skill-package-test-')
    try:
        yield Path(directory.name)
    finally:
        # WSL may briefly retain its working-directory handle after shell exit.
        for attempt in range(10):
            try:
                directory.cleanup()
                break
            except PermissionError:
                if attempt == 9:
                    raise
                time.sleep(0.1)


class PackageCoverageTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.install_root = Path(__file__).resolve().parents[1]
        powershell = shutil.which('pwsh')
        shell = shutil.which('bash' if os.name == 'nt' else 'sh')
        if not powershell or not shell:
            raise RuntimeError('Both pwsh and a POSIX shell (bash on Windows) are required.')
        cls.runners = {
            'PowerShell': [powershell, '-NoProfile', '-File', 'install/install.ps1', '-List'],
            'POSIX': [shell, 'install/install.sh', '--list'],
        }

    def check_catalog(self, skills, manifests, error=None):
        with temporary_catalog() as root:
            packages = root / 'install/packages'
            packages.mkdir(parents=True)
            for filename in ('install.ps1', 'install.sh'):
                shutil.copyfile(self.install_root / filename, root / 'install' / filename)
            for name in skills:
                skill = root / 'skills' / name
                skill.mkdir(parents=True)
                (skill / 'SKILL.md').write_text('# Fixture\n', encoding='utf-8')
            for filename, content in manifests.items():
                (packages / filename).write_bytes(content.encode('utf-8'))
            for name, command in self.runners.items():
                with self.subTest(installer=name):
                    result = subprocess.run(command, cwd=root, capture_output=True,
                                            text=True, encoding='utf-8', errors='replace',
                                            timeout=60)
                    output = result.stdout + result.stderr
                    if error is None:
                        self.assertEqual(result.returncode, 0, output)
                        self.assertIn('Computed package:', output)
                    else:
                        self.assertNotEqual(result.returncode, 0, output)
                        self.assertIn(error, output)

    def test_union_allows_overlap_and_crlf(self):
        self.check_catalog(['alpha', 'beta', 'gamma'], {
            'dev-profile.txt': '# Profile\r\nalpha\r\nbeta\r\n',
            'product-bundles.txt': 'beta\ngamma',
        })

    def test_computed_all_does_not_cover_missing_skills(self):
        self.check_catalog(['alpha', 'beta', 'gamma'], {
            'dev-profile.txt': 'alpha\n',
        }, 'Skills missing from package manifests: beta, gamma')

    def test_prefix_is_not_membership(self):
        self.check_catalog(['alpha', 'alpha-extra'], {
            'dev-profile.txt': 'alpha-extra\n',
        }, 'Skills missing from package manifests: alpha')

    def test_stale_entry_still_fails(self):
        self.check_catalog(['alpha'], {
            'dev-profile.txt': 'alpha\nunknown\n',
        }, 'Skill was not found: unknown')

    def test_duplicate_within_manifest_still_fails(self):
        self.check_catalog(['alpha'], {
            'dev-profile.txt': 'alpha\nalpha\n',
        }, 'Package contains duplicate skills:')


if __name__ == '__main__':
    unittest.main()
