.PHONY: 00_update
00_update: ## rustをアップデートします。　
	rustup update

.PHONY: 10_run
10_run: ## コードを即時実行します。
	cargo run

.PHONY: 11_build
11_build: ## コードビルドします。
	cargo build

.PHONY: 12_release_build
12_release_build: ## コードをリリース用にビルドします。
	cargo build --release

.PHONY: help
help:
	@grep -E '^[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.DEFAULT_GOAL := help