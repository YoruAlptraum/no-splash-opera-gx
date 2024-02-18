from setuptools import setup, find_packages
import py2exe

setup(
    windows=[{
        "script":"add_to_scheduler.py",
        'dest_base': 'set_scheduler',
        'company_name': 'YoruAlptraum',
        'version': '1.0.0'
        }],
    options = {"py2exe": {
        'bundle_files': 3,
        'compressed': True,
        "dist_dir": "no splash"
        }},
    author="Ozawa | github.com/YoruAlptraum",
    description="No splash opera GX",
)
