.PHONY: format
format: format-swift format-json format-markdown format-yaml

.PHONY: format-swift
format-swift:
	swift format --configuration .swift-format.json --in-place --recursive Sources
	swiftlint --config .swiftlint.yml --strict --fix

.PHONY: format-json
format-json:
	dprint fmt "**/*.json"

.PHONY: format-markdown
format-markdown:
	dprint fmt "**/*.md"

.PHONY: format-yaml
format-yaml:
	dprint fmt "**/*.{yaml,yml}"

.PHONY: lint
lint:
	swiftlint --config .swiftlint.yml --strict
	dprint check "**/*.{md,json,yaml,yml}"
