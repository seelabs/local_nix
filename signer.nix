with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    boost
    cmake
    gcc7
    qt5.qtbase
    qt5.qtsvg
    qt5.qtquickcontrols2
    qt5.qtwebsockets
    zlib
    openssl
    libsodium
  ];
}
