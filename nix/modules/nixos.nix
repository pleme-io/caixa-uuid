# nix/modules/nixos.nix — auto-generated from uuid.caixa.lisp
# description: "A library to generate and parse UUIDs."
{ config, lib, pkgs, ... }:
let
  cfg = config.services.uuid;
in {
  options.services.uuid = {
    enable = lib.mkEnableOption "uuid";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.uuid or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
