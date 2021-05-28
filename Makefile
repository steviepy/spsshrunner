lint:
	python3 -m isort --gitignore .
	python3 -m black .
	python3 -m pylint spsshrunner
	python3 -m flake8 --extend-exclude venv,build
	python3 -m mypy spsshrunner
	python3 -m pydocstyle spsshrunner

test:
	python3 -m pytest
	tox

build:
	python3 -m build
	twine check dist/*

upload:
	twine upload --skip-existing dist/*

.PHONY: build
