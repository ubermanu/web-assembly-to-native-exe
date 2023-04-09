.PHONY: clean build

all: clean build run

build:
	mkdir -p build
	npx asc src/main.ts -o build/main.wasm
	cd build && wasmer create-exe main.wasm -o main
	chmod +x build/main

run:
	build/main

clean:
	rm -rf build
