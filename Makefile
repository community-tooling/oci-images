.PHONY: init
init:
	pre-commit install --hook-type commit-msg --hook-type pre-commit
