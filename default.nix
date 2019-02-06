{ nodejs ? pkgs.nodejs-8_x, pkgs ? import <nixpkgs> {} }:
let
    lib = import /home/keidrych/src/sotekton/functional-core-imperative-shell/nix-node-packages {
      inherit pkgs nodejs;
    };
    in lib.callPackage ./project.nix {}
