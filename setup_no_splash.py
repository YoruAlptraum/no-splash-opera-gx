from setuptools import setup, find_packages
import py2exe

setup(
    windows=[{
        "script":"no_splash.py",
        'dest_base': 'no_splash',
        'company_name': 'YoruAlptraum',
        'version': '1.0.0'
        }],
    options = {"py2exe": {
        'bundle_files': 1,
        'compressed': True,
        "dist_dir": "exec"
        }},
    packages=find_packages(exclude={'add_to_scheduler', 'no_splash'}),
    author="Ozawa | github.com/YoruAlptraum",
    description="No splash opera GX",
)
