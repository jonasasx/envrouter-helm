.PHONY: helm-docs
helm-docs:
	scripts/helm-docs.sh

.PHONY: bump-version
bump-version:
	scripts/bump-version.sh