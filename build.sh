e
ho "Configuring and building Thirdparty/DBoW2 ..."

cd Thirdparty/DBoW2
mkdir build
cd build
make clean
cmake .. -DCMAKE_BUILD_TYPE=Release
make

cd ../../g2o

echo "Configuring and building Thirdparty/g2o ..."

mkdir build
cd build
make clean
cmake .. -DCMAKE_BUILD_TYPE=Release
make

cd ../../Sophus

echo "Configuring and building Thirdparty/Sophus ..."

mkdir build
cd build
make clean
cmake .. -DCMAKE_BUILD_TYPE=Release
make

cd ../../../

echo "Uncompress vocabulary ..."

cd Vocabulary
tar -xf ORBvoc.txt.tar.gz
cd ..

echo "Configuring and building ORB_SLAM3 ..."

mkdir build
cd build
make clean
cmake -DCMAKE_BUILD_TYPE=Release --DCMAKE_C_COMPILER=/usr/bin/clang --DCMAKE_CXX_COMPILER=/usr/bin/clang++ .. 
make -j8
