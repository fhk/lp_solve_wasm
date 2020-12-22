cd ../lp_solve
./ccc
cd ../lpsolve55
./ccc

cd ../combined

cp ../lpsolve55/bin/liblpsolve55.so .

emcc -s NO_EXIT_RUNTIME=1 -s EXPORT_ALL=1 -s MAIN_MODULE=1 ../lp_solve/bin/lp_solve.bc -o lp_solve.js --preload-file liblpsolve55.so --emrun -s "EXTRA_EXPORTED_RUNTIME_METHODS=['FS', 'callMain']"

