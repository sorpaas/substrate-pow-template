with import <nixpkgs> { };

stdenv.mkDerivation {
  name = "shasper-env";
  buildInputs = [
    rustup
    pkgconfig
    libudev
    openssl
	cmake
	gcc
	clang
  ];

  shellHook = ''
    export PATH=~/.cargo/bin:$PATH
	export LD_LIBRARY_PATH=${stdenv.cc.cc.lib}/lib
	export LIBCLANG_PATH=${llvmPackages.libclang}/lib
  '';
}
