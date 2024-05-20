cmake_minimum_required(VERSION 3.20)
project(MyMLIRPass)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED YES)

# 导入 MLIR 和 LLVM 的配置
find_package(MLIR REQUIRED CONFIG)
list(APPEND CMAKE_MODULE_PATH "${MLIR_CMAKE_DIR}")
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")

# 添加头文件路径
include_directories(${MLIR_INCLUDE_DIRS} ${LLVM_INCLUDE_DIRS} /home/wenhu/mlir-learning /home/wenhu/mlir-tutorial/llvm-project)

add_subdirectory(lib/Transform/Affine)
message("------>")
add_subdirectory(tools)
