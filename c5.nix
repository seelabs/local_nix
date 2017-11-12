with import <nixpkgs> {};

{ stdenv, boost, date }:
stdenv.mkDerivation rec {
  name = "c5";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    boost
    curl
    cmake
    date
  ];
}
