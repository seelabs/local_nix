with import <nixpkgs> {};

import ./rippled_generic.nix { stdenv = llvmPackages_5.stdenv; }
