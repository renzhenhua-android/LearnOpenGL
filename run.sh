# 参数说明， 
#  sh run.sh
full_path=bin/1.getting_started/1.getting_started__1.1.hello_window
if [ ! $# -eq 0 ]; then
  full_path=$1
fi
substring="/"
dir="${full_path%$substring*}"
fileName="${full_path##*$substring}"
echo $fileName
cd $dir
./$fileName