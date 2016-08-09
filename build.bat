REM build.bat
REM
REM

cd yaml-cpp\build
msbuild YAML_CPP.sln
msbuild YAML_CPP.sln /p:Configuration=Release
