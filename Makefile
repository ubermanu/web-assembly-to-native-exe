BUILD_DIR := build
INPUT_FILE ?= src/main.ts
OUTPUT_FILE ?= main

.PHONY: clean build

all: clean build run

build:
	mkdir -p $(BUILD_DIR)
	npx asc $(INPUT_FILE) -o $(BUILD_DIR)/$(OUTPUT_FILE).wasm
	cd $(BUILD_DIR) && wasmer create-exe $(OUTPUT_FILE).wasm -o $(OUTPUT_FILE)
	chmod +x $(BUILD_DIR)/$(OUTPUT_FILE)

run:
	$(BUILD_DIR)/$(OUTPUT_FILE)

clean:
	rm -rf $(BUILD_DIR)
