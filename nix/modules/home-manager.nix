# nix/modules/home-manager.nix — auto-generated from uuid.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.uuid; in {
  options.programs.uuid = {
    enable = lib.mkEnableOption "uuid";
    package = lib.mkOption { type = lib.types.package; default = pkgs.uuid or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
