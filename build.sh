#!/bin/sh

export WASI_SDK_PATH=`pwd`/wasi-sdk/build/wasi-sdk-20.0+threads
CC="${WASI_SDK_PATH}/bin/clang --sysroot=${WASI_SDK_PATH}/share/wasi-sysroot"

$CC \
    --target=wasm32-wasi-threads -pthread \
    -Wl,--import-memory,--export-memory,--max-memory=67108864 \
    threads.c -o threads.wasm
