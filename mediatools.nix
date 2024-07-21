#mediatools.nix

{ config, pkgs, ... }: {
environment.systemPackages = with pkgs; [
#photoshop
krita
#gimp
];    
}