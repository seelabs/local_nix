{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  name = "date-${version}";
  version = "2017-11-12";

  src = fetchFromGitHub {
    owner = "HowardHinnant";
    repo = "date";
    rev = "517c0f27042ac8467b303874666b280f6bace1e3";
    sha256 = "1d5drny07l6kyi33szccdllcc7vc5jp3dxkqy7c0jn9fknmnamiv";
  };

  dontBuild = true;
  installPhase = ''
    mkdir -p $out/include
    mv include/ $out/
    mv src/tz.cpp $out/include/
  '';

  meta = with stdenv.lib; {
    description = "C++ date and timezone library";
    homepage = https://https://github.com/HowardHinnant/date;
    license = licenses.mit;
    platforms = platforms.all;
  };
}
