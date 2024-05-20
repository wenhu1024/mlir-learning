cmake_minimum_required(VERSION 3.20)
project(MyMLIRPass)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED YES)



# 导入 MLIR 和 LLVM 的配置
find_package(MLIR REQUIRED CONFIG)
list(APPEND CMAKE_MODULE_PATH "${MLIR_CMAKE_DIR}")
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")

set(MLIR_BINARY_DIR ${CMAKE_BINARY_DIR})
# 添加 MLIR 和 LLVM 相关的模块和选项
include(TableGen)
include(AddLLVM)
include(AddMLIR)
include(HandleLLVMOptions)
include(MLIRConfig)
include(LLVMConfig)
include(MLIRTargets)

# 添加头文件路径
include_directories(${MLIR_INCLUDE_DIRS} ${LLVM_INCLUDE_DIRS} /home/wenhu/mlir-learning /home/wenhu/mlir-tutorial/llvm-project)

# 生成可执行文件
add_executable(tutorial-opt tutorial-opt.cpp)


# Link against the required libraries and passes
target_link_libraries(tutorial-opt PRIVATE
    AffineFullUnroll
    MLIRAffineDialect
    MLIRAffineUtils
    MLIRFuncDialect
    MLIRPass
    MLIRTransforms
)