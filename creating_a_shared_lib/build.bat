@echo off
cmake -B build -DCMAKE_WINDOWS_EXPORT_ALL_SYMBOLS=TRUE -DBUILD_SHARED_LIBS=TRUE
cmake --build build --config Release
cd bin