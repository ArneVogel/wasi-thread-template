#!/bin/sh

./wasmtime/target/release/wasmtime run --wasm-features=threads --wasi-modules=experimental-wasi-threads threads.wasm
