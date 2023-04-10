# WebAssembly Native Executable

> This is a simple example on how to create a WebAssembly native executable on linux using [wasmer](https://wasmer.io/).

## Dependencies

- [wasmer](https://wasmer.io/)
- Node.js + PNPM (or else you can use NPM or Yarn)

## Install

Clone this repository and install the dependencies:

```bash
git clone https://github.com/ubermanu/web-assembly-to-native-exe
cd web-assembly-to-native-exe
pnpm install
```

## Build

Build the WebAssembly file into a native executable:

```bash
make build
```

## Run

Run the executable:

```bash
make run
```
