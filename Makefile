CURRENT_DIR = $(shell pwd)
TESTS ?= tests/unit/test_eos_download.py
TAG ?= not slow
TEST_OPT = -rA --cov-report term:skip-covered
REPORT = -v --html=tests/report.html --html=report.html --self-contained-html --cov-report=html --color yes
COVERAGE = --cov=eos_downloader

.PHONY: test
test:
	poetry run pytest $(TEST_OPT) $(REPORT) $(COVERAGE) -m '$(TAG)' $(TESTS)