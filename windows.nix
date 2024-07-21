#windows.nix

{ config, pkgs, ... }: {

environment.systemPackages = with pkgs; [
  pkgs.powershell
  pkgs.wine
  pkgs.lutris
  pkgs.bottles
  pkgs.spice
  pkgs.win-spice
  pkgs.win-virtio
]; }