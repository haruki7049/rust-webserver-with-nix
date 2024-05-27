# rust-webserver-with-nix
Rust web server with Nix/Nix-flakes.

## Usage
```bash
# In /with-nix-flakes directory...
nix develop # Enter the development environment, with cargo, rustc, rustfmt and etc.
nix build .#default # Build the web-server in with-nix-flakes
```
```bash
# In /with-nix directory...
nix-shell # Enter the nix-shell environment, with cargo, rustc, rustfmt and etc.
nix-build # Build the web-server in with-nix
```
