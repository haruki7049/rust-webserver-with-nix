# rust-webserver-with-nix
Rust web server with Nix/Nix-flakes.

## Usage
```bash
# In /with-nix-flakes directory...
nix develop # Enter the development environment, with cargo, rustc, rustfmt and etc.
nix build .#default # Build the web-server in with-nix-flakes
nix flake check # Run nix-checkers
nix fmt # Run formatter
```
```bash
# In /with-nix directory...
nix-shell # Enter the nix-shell environment, with cargo, rustc, rustfmt and etc.
nix-build # Build the web-server in with-nix
nix-build ./treefmt.nix # Create formatter into result
```
