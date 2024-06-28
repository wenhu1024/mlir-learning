/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* TypeDef Declarations                                                       *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

#ifdef GET_TYPEDEF_CLASSES
#undef GET_TYPEDEF_CLASSES


namespace mlir {
class AsmParser;
class AsmPrinter;
} // namespace mlir
namespace mlir {
namespace tutorial {
namespace poly {
class PolynomialType;
class PolynomialType : public ::mlir::Type::TypeBase<PolynomialType, ::mlir::Type, ::mlir::TypeStorage> {
public:
  using Base::Base;
  static constexpr ::llvm::StringLiteral getMnemonic() {
    return {"poly"};
  }

};
} // namespace poly
} // namespace tutorial
} // namespace mlir
MLIR_DECLARE_EXPLICIT_TYPE_ID(::mlir::tutorial::poly::PolynomialType)

#endif  // GET_TYPEDEF_CLASSES

