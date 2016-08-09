# prepare
#
# 1. create build dir
# 2. run cmake
# 3. BOM error patch
Write-Host "> git submodule init"
git submodule init

Write-Host "> git submodule update"
git submodule update

Write-Host "> ls"
ls .

Write-Host "> yaml-cpp"
cd yaml-cpp

Write-Host "> mkdir build"
mkdir build

Write-Host "> cd build"
cd build

Write-Host "> ls .."
ls ..

Write-Host "> cmake .."
cmake ..

# avoid no BOM UTF-8 file error
$MyPath = "..\test\gmock-1.7.0\src\gmock-matchers.cc"
$MyFile = Get-Content $MyPath
$MyFile | Out-File -Encoding "UTF8" $MyPath
