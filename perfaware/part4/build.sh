#!/usr/bin/env sh

if ! command -v gcc >/dev/null 2>&1; then
    echo "WARNING: gcc not found -- GCC executable will not be built"
fi

if ! command -v clang >/dev/null 2>&1; then
    echo "WARNING: clang not found -- GCC executable will not be built"
fi

for f in *_main.cpp; do
    ./build_single.sh $f
done
