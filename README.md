# Basic API Test
Python unittests-based tiny framework. Meant more as practice for Python and taking a look at its basic testing tools.

## Basic Requirements
- Pipenv (install directions [here](https://pipenv.readthedocs.io/en/latest/#install-pipenv-today))
- Latest browser webdrivers (e.g. Chromedriver, Geckodriver)


## Setup
- `pipenv install`

## Run
- For API Test: `pipenv run python -m unittest discover -v`
- For Web Test: `pipenv run robot web_app_tests`

## ToDo
- Add a way to export results for things like CI (JUnit XML format, for example)
- Figure out actual python convention
