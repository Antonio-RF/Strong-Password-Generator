{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-24.05.tar.gz") {} }:

pkgs.mkShell {
  name = "strong-password-generator-shell";

  buildInputs = [
    (pkgs.python310.withPackages (ps: with ps; [ cryptography ]))
  ];

  shellHook = ''
    echo "Ambiente pronto! Rode: python Generator.py"
  '';
}
