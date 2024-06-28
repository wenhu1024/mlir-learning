
include_directories(${CMAKE_BINARY_DIR})
add_executable(tutorial-opt tutorial-opt.cpp)

get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)
get_property(conversion_libs GLOBAL PROPERTY MLIR_CONVERSION_LIBS)
get_property(translation_libs GLOBAL PROPERTY MLIR_TRANSLATION_LIBS)

target_link_libraries(
    tutorial-opt
    PRIVATE

    ${translation_libs}
    ${dialect_libs}
    ${conversion_libs} 

    AffineFullUnroll
    MulToAdd
    MLIRPoly

    MLIROptLib
    MLIRPass
)

