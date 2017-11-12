with import <nixpkgs> {};

{ stdenv }:

stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    ccache
    cmake
    git
    gdb
    rr
    rtags
    vim
    zsh
  ];
}
