include_directories(${CMAKE_BINARY_DIR})

add_mlir_dialect_library(MLIRPoly
    PolyDialect.cpp

    ADDITIONAL_HEADER_DIRS
    ${PROJECT_SOURCE_DIR}/lib/Dialect/Poly
    
    DEPENDS
    MLIRPolyOpsIncGen

    LINK_LIBS PUBLIC
)

set(LLVM_TARGET_DEFINITIONS PolyDialect.td)
mlir_tablegen(PolyTypes.h.inc -gen-typedef-decls -typedefs-dialect=poly)
mlir_tablegen(PolyTypes.cpp.inc -gen-typedef-defs -typedefs-dialect=poly)
mlir_tablegen(PolyDialect.h.inc -gen-dialect-decls -dialect=poly)
mlir_tablegen(PolyDialect.cpp.inc -gen-dialect-defs -dialect=poly)

add_public_tablegen_target(MLIRPolyOpsIncGen)
add_dependencies(mlir-headers MLIRPolyOpsIncGen)

add_mlir_doc(PolyDialect PolyDialect Poly/ -gen-dialect-doc)
