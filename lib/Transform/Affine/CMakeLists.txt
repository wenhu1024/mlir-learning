# Passes that work with the Affine dialect

# 设置库的名称和源文件
add_library(AffineFullUnroll
    AffineFullUnroll.cpp
    AffineFullUnroll.h
)

# 导入 MLIR 和 LLVM 的配置
find_package(MLIR REQUIRED CONFIG)
list(APPEND CMAKE_MODULE_PATH "${MLIR_CMAKE_DIR}")
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")

# 添加头文件路径
include_directories(${MLIR_INCLUDE_DIRS} ${LLVM_INCLUDE_DIRS} /home/wenhu/mlir-learning /home/wenhu/mlir-tutorial/llvm-project)


# Link against MLIR and LLVM libraries
target_link_libraries(AffineFullUnroll
    MLIRAffineDialect
    MLIRAffineUtils
    MLIRFuncDialect
    MLIRPass
    MLIRTransforms
)