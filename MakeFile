.PHONY: install lint test

install:
	pip install --upgrade pip && \
	pip install -r requirements.txt

lint:
	flake8 --max-line-length=120 --ignore=E501,E203,E266,E402,W503,W504 .
	black --check --line-length 120 .
	isort --check-only --profile black .

test:
	python -m pytest -vv --cov=hello test_hello.py