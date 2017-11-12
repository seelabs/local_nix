with import <nixpkgs> {};

import ./dev_generic.nix { stdenv = llvmPackages_5.libcxxStdenv; boost = boost_clang5; }
