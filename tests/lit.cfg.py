import os
from pathlib import Path

from lit.formats import ShTest

config.name = "mlir_tutorial"
config.test_format = ShTest()
config.suffixes = [".mlir"]