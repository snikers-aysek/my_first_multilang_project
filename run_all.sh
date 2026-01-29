#!/usr/bin/env bash

echo "=== Running C++ code ==="
cd cpp_core
g++ -o main_program main.cpp utils.cpp
if [ $? -eq 0 ]; then
	./main_program
else
	echo "C++ compilation failed"
fi
cd ..

echo " "
echo "=== Running Rust code ==="
cd rust_safe
cargo run
cd ..

echo " "
echo "=== Running Haskell code ==="
cd haskell_fun/app
ghc -o main Main.hs
if [ $? -eq 0 ]; then
	./main
else
	echo "Haskell compilation failed"
fi
cd ../../

echo " "
echo "=== All programs finished ==="
