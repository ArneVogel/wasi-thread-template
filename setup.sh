#!/bin/sh

#git clone --recursive --depth 1 --branch wasi-sdk-20+threads https://github.com/WebAssembly/wasi-sdk.git
#cd wasi-sdk
#NINJA_FLAGS=-v make package
#cd ..
git clone --depth 1 --recurse-submodules https://github.com/bytecodealliance/wasmtime
cd wasmtime
cargo build --release
cd ..
