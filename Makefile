.PHONY: check help

help:
	@echo "make check  - verify the execution-order gates have not been skipped"

# There is no code yet, by design. This gate exists so that the ordering in
# README.md is enforced rather than merely written down.
check:
	@fail=0; \
	if [ -d src ] || ls experiments/*PREREG.md >/dev/null 2>&1; then \
		if grep -q 'NOT STARTED' docs/LITERATURE-AUDIT.md; then \
			echo "ERROR gate 1: implementation or a frozen prereg exists, but the"; \
			echo "      literature audit is still marked NOT STARTED."; \
			fail=1; \
		fi; \
	fi; \
	if [ $$fail -eq 0 ]; then echo "OK    execution-order gates intact"; fi; \
	exit $$fail
