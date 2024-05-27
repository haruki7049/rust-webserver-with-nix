{ system ? builtins.currentSystem }:
let
  nixpkgsSrc = builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/2663954f6770859f97b2326c9bbdc75411067677.tar.gz";
  treefmt-nixSrc = builtins.fetchTarball "https://github.com/numtide/treefmt-nix/archive/2fba33a182602b9d49f0b2440513e5ee091d838b.tar.gz";
  nixpkgs = import nixpkgsSrc { inherit system; };
  treefmt-nix = import treefmt-nixSrc;
in
treefmt-nix.mkWrapper nixpkgs {
  # Used to find the project root
  projectRootFile = ".git/config";
  programs.rustfmt.enable = true;
  programs.taplo.enable = true;
  programs.nixpkgs-fmt.enable = true;
}
