cmake -S . -B build
cmake --build build -j$(sysctl -n hw.logicalcpu)
# 编译并执行项要的程序
# full_path=bin/1.getting_started/1.getting_started__1.2.hello_window_clear
# full_path=bin/1.getting_started/1.getting_started__5.0.transformations
full_path=bin/1.getting_started/1.getting_started__6.1.coordinate_systems
if [ ! $# -eq 0 ]; then
  full_path=$1
fi
substring="/"
dir="${full_path%$substring*}"
fileName="${full_path##*$substring}"
echo $fileName
cd $dir
./$fileName