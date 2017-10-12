cd Thirdparty
git clone https://github.com/stevenlovegrove/Pangolin
cd Pangolin
mkdir build
cd build
cmake .. -G "Visual Studio 14 2015 Win64" ^
-DCMAKE_CONFIGURATION_TYPES:STRING="Release"
cmake --build "." --target "ALL_BUILD" --config "Release"
cd ../..


echo "Configuring and building Thirdparty/DBoW2 ..."
cd Thirdparty/DBoW2
mkdir build
cd build
cmake .. -G "Visual Studio 14 2015 Win64" ^
-DCMAKE_CONFIGURATION_TYPES:STRING="Release"
cmake --build "." --target "ALL_BUILD" --config "Release"
cd ../..


echo "Configuring and building Thirdparty/g2o ..."
cd Thirdparty/g2o
mkdir build
cd build
cmake .. -G "Visual Studio 14 2015 Win64" ^
-DEIGEN3_INCLUDE_DIR:PATH="C:/SDKs/eigen/eigen3/include/eigen3" ^
-DG2O_USE_OPENMP:BOOL="ON" ^
-DCMAKE_CONFIGURATION_TYPES:STRING="Release"
cmake --build "." --target "ALL_BUILD" --config "Release"
cd ../..


echo "Uncompress vocabulary ..."
cd Vocabulary
REM Extract the archive with your tool.
REM tar -xf ORBvoc.txt.tar.gz
cd ..


echo "Configuring and building ORB_SLAM2 ..."

mkdir build
cd build
cmake .. -G "Visual Studio 14 2015 Win64" ^
-DEIGEN3_INCLUDE_DIR:PATH="C:/SDKs/eigen/eigen3/include/eigen3" ^
-DCMAKE_CONFIGURATION_TYPES:STRING="Release"
cmake --build "." --target "ALL_BUILD" --config "Release"

