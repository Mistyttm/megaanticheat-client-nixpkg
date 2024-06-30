{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  # Get dependencies from the main package
  inputsFrom = [ (pkgs.callPackage ./default.nix { }) ];
  # Additional tooling
#   buildInputs = with pkgs; [
#     rustc
#     cargo
#     openssl
#     pkg-config
#   ];
#   nativeBuildInputs = [ "pkgconfig" ];
}
