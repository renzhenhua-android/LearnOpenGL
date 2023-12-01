cmake -S . -B build
cmake --build build -j$(sysctl -n hw.logicalcpu)
# 编译并执行项要的程序
full_path=bin/1.getting_started/1.getting_started__1.1.hello_window
array=(${full_path//// })  
cd bin/${array[1]}
./${array[2]}