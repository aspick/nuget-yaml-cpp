cp yaml-cpp\include nuget\build\native\

mkdir nuget\build\native\lib
cp yaml-cpp\build\Debug\* nuget\build\native\lib\
cp yaml-cpp\build\Release\* nuget\build\native\lib\

cd nuget
# download nuget.exe
Invoke-WebRequest -Uri http://dist.nuget.org/win-x86-commandline/latest/nuget.exe -OutFile .\

# update meta

# packing
.\nuget pack yaml-cpp.nuspec
