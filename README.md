# Check pip licenses action

This actions checks for allowed licenses on pip packages.

## Usage:

You'll need to setup youre python evnironment on your pipeline and install yor requirements
for this `adjust/check-pip-licenses-action` to check you licenses.

```
    - uses: actions/checkout@v3

    - name: Set up Python
      uses: actions/setup-python@v4.2.0
      with:
        python-version: 3.9.6

    - uses: actions/cache@v3
      id: cache-venv
      with:
        path: ${{ env.pythonLocation }}
        key: ${{ env.pythonLocation }}-${{ hashFiles('requirements**.txt') }}

    - name: Install dependencies
      if: steps.cache-venv.outputs.cache-hit != 'true'
      run: |
        python -m pip install -U pip setuptools
        python -m pip install -r requirements-dev.txt

    - uses: adjust/check-pip-licenses-action@v1.0.0
```

## Notes
  - The licenses are based on a hardcoded constant called ALLOWED_LICENSES, meaning we only have a way of
  whiitelisting packages directly on code.
