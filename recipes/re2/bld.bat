mkdir -p build
cd build
cmake -DBUILD_SHARED_LIBS=ON ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DCMAKE_INSTALL_PREFIX=%PREFIX% ^
      -G "NMake Makefiles" ^
      %SRC_DIR%
if errorlevel 1 exit 1

nmake
if errorlevel 1 exit 1

nmake test
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
