with import <nixpkgs> {};

{ stdenv, boost }:

stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    boost
    cmake
  ];
}
