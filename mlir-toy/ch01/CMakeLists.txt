cmake_minimum_required(VERSION 3.13.4)

project(mlir-toy VERSION 0.0.0)

# 设置编译命令导出
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED YES)

# 寻找并加载 MLIR 和 LLVM 库的配置
find_package(MLIR REQUIRED CONFIG)
list(APPEND CMAKE_MODULE_PATH "${MLIR_CMAKE_DIR}")
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")

message(STATUS "${MLIR_CMAKE_DIR}")
message(STATUS "${LLVM_CMAKE_DIR}")

# 添加 MLIR 和 LLVM 相关的模块和选项
include(TableGen)
include(AddLLVM)
include(AddMLIR)
include(HandleLLVMOptions)

# 添加头文件目录
include_directories(${LLVM_INCLUDE_DIRS} ${MLIR_INCLUDE_DIRS} include parser)
message(STATUS "${LLVM_INCLUDE_DIRS}")
message(STATUS "${MLIR_INCLUDE_DIRS}")


set(NO_RTTI "-fno-rtti")
add_definitions(${NO_RTTI})

# 构建可执行文件
add_executable(mlir-toy toyc.cpp parser/AST.cpp)

# 链接 MLIR 库
target_link_libraries(mlir-toy PRIVATE MLIRIR MLIRParser MLIRTransformUtils)

# 如果需要，可以添加其他链接的 MLIR 库，例如：
# target_link_libraries(mlir-toy PRIVATE MLIRStandardOps MLIRTransforms MLIRAnalysis)

# 设置安装目录
install(TARGETS mlir-toy DESTINATION bin)
