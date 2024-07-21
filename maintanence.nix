#maintanence.nix

{ config, pkgs, ... }: {
#  system.autoupgrade = (
#    enable = true;
#    channel = stable; );
boot.loader.systemd-boot.configurationLimit = 5;
nix = {
    settings.auto-optimise-store = true;
    gc = {
        automatic = true;
        dates = "weekly";
        options = "--delete-older-than 7d";
    };
};
}