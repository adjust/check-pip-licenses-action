ARG PYTHON_VERSION=3.10
FROM python:${PYTHON_VERSION}-slim

ENV PIP_NO_CACHE_DIR=1 PIP_DISABLE_PIP_VERSION_CHECK=1 PIP_ROOT_USER_ACTION=ignore
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY entrypoint.sh /entrypoint.sh
COPY check_pip_licenses /check_pip_licenses
ENTRYPOINT ["/entrypoint.sh"]
