# coding: UTF-8


from distutils.core import setup
from distutils.extension import Extention
from Cython.Distutils import build_ext


ext_modules = [
        Extention('',
            ['.pyx'],
            libraries=['m'])
        ]

setup(
        name='',
        cmdclass={'build_ext': build_ext},
        ext_modules=ext_modules
        )

