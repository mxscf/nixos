#media.nix

{ config, pkgs, ... }: {

environment.systemPackages = with pkgs; [
#books
foliate
#games
  steam
  prismlauncher
#videos
  vlc
#music
  spotify
#socials
  rssguard
  discord
];
programs.steam = {
  enable = true;
  remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
  dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  };
}