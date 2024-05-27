{ rust_overlay ? import (builtins.fetchTarball https://github.com/oxalica/rust-overlay/archive/8ef3f6a8f5af867ab5f75fc86fbd934a6351820b.tar.gz)
, crane ? import (builtins.fetchTarball https://github.com/ipetkov/crane/archive/19ca94ec2d288de334ae932107816b4a97736cd8.tar.gz) { }
, pkgs ? import (builtins.fetchTarball https://github.com/NixOS/nixpkgs/archive/057f9aecfb71c4437d2b27d3323df7f93c010b7e.tar.gz) {
    overlays = [
      rust_overlay
    ];
  }
, rust ? pkgs.rust-bin.fromRustupToolchainFile ./rust-toolchain.toml
}:

crane.buildPackage rec {
  src = ./.;
  doCheck = true;
}
