with import <nixpkgs> {};

{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  name = "rippled-${version}";
  version = "0.80.0";

  src = fetchFromGitHub {
    owner = "ripple";
    repo = "rippled";
    rev = "cafe18c59279e7de447f25a0e00d0562d6441c7a";
    sha256 = "17ikdlwbs7cwhfcqv8726n1a1ns6pj0d31y8242sd794gb4p6hcv";
  };

  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    cmake
    boost_static # custom
    zlib
    openssl
    protobuf
  ];

  cmakeFlags = "-Dtarget=gcc.release.unity";

  installPhase = ''
  mkdir -p $out/bin
  find . -name rippled -type f -executable -exec cp {} $out/bin/ \;
  '';
}
