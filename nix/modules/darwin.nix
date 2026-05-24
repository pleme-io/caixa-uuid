# nix/modules/darwin.nix — auto-generated from uuid.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.uuid; in {
  options.services.uuid = {
    enable = lib.mkEnableOption "uuid";
    package = lib.mkOption { type = lib.types.package; default = pkgs.uuid or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
