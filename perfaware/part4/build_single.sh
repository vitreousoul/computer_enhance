#!/usr/bin/env sh

if [ ! -d "build" ]; then
    mkdir build
fi

cd build

if command -v gcc >/dev/null 2>&1; then
    gcc -mavx2 -g -Wall -fuse-ld=lld ../$1 -o ${1%%.*}"_dgcc.exe"
    gcc -mavx2 -O3 -g -Wall -fuse-ld=lld ../$1 -o ${1%%.*}"_rgcc.exe"
fi

if command -v clang >/dev/null 2>&1; then
    clang -mavx2 -g -Wall -fuse-ld=lld ../$1 -o ${1%%.*}"_dclang.exe"
    clang -mavx2 -O3 -g -Wall -fuse-ld=lld ../$1 -o ${1%%.*}"_rclang.exe"
fi
