/* Autogenerated by mlir-tblgen; don't manually edit */

#ifdef GEN_PASS_DECL
// Generate declarations for all passes.
#define GEN_PASS_DECL_MULTOADD
#undef GEN_PASS_DECL
#endif // GEN_PASS_DECL

//===----------------------------------------------------------------------===//
// MulToAdd
//===----------------------------------------------------------------------===//
#ifdef GEN_PASS_DECL_MULTOADD
std::unique_ptr<::mlir::Pass> createMulToAdd();
#undef GEN_PASS_DECL_MULTOADD
#endif // GEN_PASS_DECL_MULTOADD
#ifdef GEN_PASS_DEF_MULTOADD

namespace impl {
  std::unique_ptr<::mlir::Pass> createMulToAdd();
} // namespace impl
namespace impl {

template <typename DerivedT>
class MulToAddBase : public ::mlir::OperationPass<> {
public:
  using Base = MulToAddBase;

  MulToAddBase() : ::mlir::OperationPass<>(::mlir::TypeID::get<DerivedT>()) {}
  MulToAddBase(const MulToAddBase &other) : ::mlir::OperationPass<>(other) {}

  /// Returns the command-line argument attached to this pass.
  static constexpr ::llvm::StringLiteral getArgumentName() {
    return ::llvm::StringLiteral("mul-to-add");
  }
  ::llvm::StringRef getArgument() const override { return "mul-to-add"; }

  ::llvm::StringRef getDescription() const override { return "Convert multiplications to repeated additions"; }

  /// Returns the derived pass name.
  static constexpr ::llvm::StringLiteral getPassName() {
    return ::llvm::StringLiteral("MulToAdd");
  }
  ::llvm::StringRef getName() const override { return "MulToAdd"; }

  /// Support isa/dyn_cast functionality for the derived pass class.
  static bool classof(const ::mlir::Pass *pass) {
    return pass->getTypeID() == ::mlir::TypeID::get<DerivedT>();
  }

  /// A clone method to create a copy of this pass.
  std::unique_ptr<::mlir::Pass> clonePass() const override {
    return std::make_unique<DerivedT>(*static_cast<const DerivedT *>(this));
  }

  /// Return the dialect that must be loaded in the context before this pass.
  void getDependentDialects(::mlir::DialectRegistry &registry) const override {
    
  }

  /// Explicitly declare the TypeID for this class. We declare an explicit private
  /// instantiation because Pass classes should only be visible by the current
  /// library.
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(MulToAddBase<DerivedT>)

protected:
private:

  friend std::unique_ptr<::mlir::Pass> createMulToAdd() {
    return std::make_unique<DerivedT>();
  }
};
} // namespace impl

std::unique_ptr<::mlir::Pass> createMulToAdd() {
  return impl::createMulToAdd();
}
#undef GEN_PASS_DEF_MULTOADD
#endif // GEN_PASS_DEF_MULTOADD
#ifdef GEN_PASS_REGISTRATION

//===----------------------------------------------------------------------===//
// MulToAdd Registration
//===----------------------------------------------------------------------===//

inline void registerMulToAdd() {
  ::mlir::registerPass([]() -> std::unique_ptr<::mlir::Pass> {
    return createMulToAdd();
  });
}

// Old registration code, kept for temporary backwards compatibility.
inline void registerMulToAddPass() {
  ::mlir::registerPass([]() -> std::unique_ptr<::mlir::Pass> {
    return createMulToAdd();
  });
}

//===----------------------------------------------------------------------===//
// Arith Registration
//===----------------------------------------------------------------------===//

inline void registerArithPasses() {
  registerMulToAdd();
}
#undef GEN_PASS_REGISTRATION
#endif // GEN_PASS_REGISTRATION
// Deprecated. Please use the new per-pass macros.
#ifdef GEN_PASS_CLASSES

template <typename DerivedT>
class MulToAddBase : public ::mlir::OperationPass<> {
public:
  using Base = MulToAddBase;

  MulToAddBase() : ::mlir::OperationPass<>(::mlir::TypeID::get<DerivedT>()) {}
  MulToAddBase(const MulToAddBase &other) : ::mlir::OperationPass<>(other) {}

  /// Returns the command-line argument attached to this pass.
  static constexpr ::llvm::StringLiteral getArgumentName() {
    return ::llvm::StringLiteral("mul-to-add");
  }
  ::llvm::StringRef getArgument() const override { return "mul-to-add"; }

  ::llvm::StringRef getDescription() const override { return "Convert multiplications to repeated additions"; }

  /// Returns the derived pass name.
  static constexpr ::llvm::StringLiteral getPassName() {
    return ::llvm::StringLiteral("MulToAdd");
  }
  ::llvm::StringRef getName() const override { return "MulToAdd"; }

  /// Support isa/dyn_cast functionality for the derived pass class.
  static bool classof(const ::mlir::Pass *pass) {
    return pass->getTypeID() == ::mlir::TypeID::get<DerivedT>();
  }

  /// A clone method to create a copy of this pass.
  std::unique_ptr<::mlir::Pass> clonePass() const override {
    return std::make_unique<DerivedT>(*static_cast<const DerivedT *>(this));
  }

  /// Return the dialect that must be loaded in the context before this pass.
  void getDependentDialects(::mlir::DialectRegistry &registry) const override {
    
  }

  /// Explicitly declare the TypeID for this class. We declare an explicit private
  /// instantiation because Pass classes should only be visible by the current
  /// library.
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(MulToAddBase<DerivedT>)

protected:
};
#undef GEN_PASS_CLASSES
#endif // GEN_PASS_CLASSES