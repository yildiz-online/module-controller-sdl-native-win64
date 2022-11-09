#!/usr/bin/env bash

TARGET_PATH="../../../../target/classes"
TARGET_WIN64="$TARGET_PATH/win64"

cmake . \
-DCMAKE_BUILD_TYPE=Release \
-DLIBRARY_OUTPUT_PATH=${TARGET_WIN64} \
-DCMAKE_TOOLCHAIN_FILE=mingw-toolchain.cmake

make
r1=$?

cp lib/win64/SDL2.dll ${TARGET_WIN64}/SDL2.dll

exit ${r1}
