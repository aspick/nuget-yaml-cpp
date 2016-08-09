# prepare
#
# 1. create build dir
# 2. run cmake
# 3. BOM error patch


cd yaml-cpp
mkdir build
cd build
cmake ..

# avoid no BOM UTF-8 file error
$MyPath = "..\test\gmock-1.7.0\src\gmock-matchers.cc"
$MyFile = Get-Content $MyPath
$MyFile | Out-File -Encoding "UTF8" $MyPath
