import os
import platform

import lit.formats
# Global instance of LLVMConfig provided by lit
from lit.llvm import llvm_config
from lit.llvm.subst import ToolSubst

config.name = "mlir_tutorial"
config.test_format = lit.formats.ShTest(True)
config.suffixes = [".mlir"]

# test_source_root: The root path where tests are located.
config.test_source_root = os.path.dirname(__file__)

# test_exec_root: The root path where tests should be run.
config.test_exec_root = os.path.join(config.my_obj_root, 'tests')

# The list of tools required for testing - prepend them with the path specified
tools = ["mlir-opt", "mlir-cpu-runner","mlir-tblgen"]
append_tools = ["tutorial-opt"]
llvm_config.add_tool_substitutions(tools, config.llvm_tools_dir) 
llvm_config.add_tool_substitutions(append_tools, os.path.join(config.my_obj_root, 'bin')) 