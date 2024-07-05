{ pkgs, lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "MegaAntiCheat";
  version = "0.0.6";

  src = fetchFromGitHub {
    owner = "MegaAntiCheat";
    repo = "client-backend";
    rev = "v0.0.6";
    sha256 = "09a7pibxqj7n194v57nq7qjyb13y2iczdsy750zci0rq4ql79ip9";
  };

  cargoLock = {
    lockFile = ./Cargo.lock;
    outputHashes = {
      "rcon-0.5.2" = "sha256-DJkINFgIsS94/ps5ahrilZkyphKjmR7a0xYDK2mFg0Y=";
      "steam-language-gen-0.1.2" = "sha256-KcZdf0sDJMbPDxPCZkq85eQ+MmbHnr2LKc9B1qmLuz0=";
      "tf-demo-parser-0.5.1" = "sha256-QEUd2yTIshS2H+XO8p1ggh22tox3jgPoYybrv0MhKL8=";
    };
  };

  postPatch = ''
    cp -r ${./ui} ./ui
    ls
  '';

  buildInputs = [
    pkgs.openssl
    pkgs.rustc
    pkgs.cargo
  ];
  nativeBuildInputs = [ pkgs.pkg-config ];
}
