with import <nixpkgs> {};

rec {
  clang_libcxx_dev = import ./dev_generic.nix { stdenv = llvmPackages_5.libcxxStdenv; boost = boost_clang5; };
  date = import ./date.nix { stdenv = stdenv; inherit fetchFromGitHub; };
  rippled = import ./rippled_generic.nix { stdenv = overrideCC stdenv gcc7; inherit fetchFromGitHub; };
  rippled_clang = import ./rippled_generic.nix { stdenv = llvmPackages_5.stdenv; inherit fetchFromGitHub; };
  c5 = import ./c5.nix { stdenv = llvmPackages_5.libcxxStdenv; boost = boost_clang5; date = date; };
}
