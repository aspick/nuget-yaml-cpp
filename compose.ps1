cp yaml-cpp\include nuget\build\native\

mkdir nuget\build\native\lib
cp yaml-cpp\build\Debug\* nuget\build\native\lib\
cp yaml-cpp\build\Release\* nuget\build\native\lib\

# update meta

# packing
cd nuget
.\nuget pack yaml-cpp.nuspec
