cmake_minimum_required(VERSION 3.20)
project(MyMLIRPass )


set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED YES)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)


find_package(MLIR REQUIRED CONFIG)
find_package(LLVM REQUIRED CONFIG)
list(APPEND CMAKE_MODULE_PATH "${MLIR_CMAKE_DIR}")
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")

message("MLIR_CMAKE_DIR: ${MLIR_CMAKE_DIR}")
message("LLVM_CMAKE_DIR: ${LLVM_CMAKE_DIR}")


include(TableGen)
include(AddLLVM)
include(AddMLIR)
include(MLIRConfig)
include(LLVMConfig)
include(MLIRTargets)


# NOTE: Very important for building this program
if(NOT LLVM_ENABLE_RTTI)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
endif()


include_directories(${MLIR_INCLUDE_DIRS} ${LLVM_INCLUDE_DIRS} ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_BINARY_DIR})
message("MLIR_INCLUDE_DIRS: ${MLIR_INCLUDE_DIRS}")
message("LLVM_INCLUDE_DIRS: ${LLVM_INCLUDE_DIRS}")
message("CMAKE_CURRENT_SOURCE_DIR: ${CMAKE_CURRENT_SOURCE_DIR}")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY  "${CMAKE_BINARY_DIR}/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")

add_subdirectory(lib)
add_subdirectory(tools)


