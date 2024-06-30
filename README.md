# MegaAntiCheat Client Nix Package

The release builds from upstream (https://github.com/MegaAntiCheat/client-backend) do not work on NixOS as they require dynamically linked libraries. This package aims to fix that by building _MAC_ directly for NixOS on linux (I don't have a mac so I have no idea if it'll work on there, I dont think TF2 works on macs anymore anyway)

## Tasks
- [x] Get client_backend compiled
  - [x] Get client_backend running
- [ ] Bundle UI
- [ ] Dynamically acquire the Cargo.lock
- [ ] Dynamically acquire the ui
  - [ ] Bundle the ui into client_backend
- [ ] Submit Package to nixpkgs after v1.0 of _MAC_ releases
