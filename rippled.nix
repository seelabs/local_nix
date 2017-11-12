with import <nixpkgs> {};

import ./rippled_generic.nix { stdenv = overrideCC stdenv gcc7; }
