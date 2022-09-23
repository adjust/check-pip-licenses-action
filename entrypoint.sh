#!/bin/sh -l

pip install -r /github/workspace/$1.txt
/check_pip_licenses
