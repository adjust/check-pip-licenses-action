#!/bin/sh -l

pip install -r /github/workspace/$INPUT_REQUIREMENTS_FILE
/check_pip_licenses
