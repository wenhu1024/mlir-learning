cmake_minimum_required(VERSION 3.20)
project(MyMLIRPass)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED YES)


set(NO_RTTI "-fno-rtti")
add_definitions(${NO_RTTI})



# 导入 MLIR 和 LLVM 的配置
find_package(MLIR REQUIRED CONFIG)
list(APPEND CMAKE_MODULE_PATH "${MLIR_CMAKE_DIR}")
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")


# 添加头文件路径
include_directories(${MLIR_INCLUDE_DIRS} ${LLVM_INCLUDE_DIRS} /home/wenhu/mlir-learning /home/wenhu/mlir-tutorial/llvm-project)

# 生成可执行文件
add_executable(tutorial-opt tutorial-opt.cpp)


message("+++")

find_package(MLIR REQUIRED CONFIG)

# 如果MLIR没有正确找到，可能需要设置MLIR_DIR变量来指定MLIR的安装目录
if (NOT MLIR_FOUND)
    message(FATAL_ERROR "====================MLIR not found. Set MLIR_DIR to the directory containing MLIRConfig.cmake.")
endif()

message("77777777777")
# Link against the required libraries and passes
target_link_libraries(tutorial-opt PRIVATE
    AffineFullUnroll
    # MulToAdd
    # MLIRAllPassesAndDialects
    # MLIRMlirOptLib
    # MLIRPass
)