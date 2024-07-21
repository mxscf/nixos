#virtualization.nix

{ config, pkgs, ... }: {
environment.systemPackages = with pkgs; [
  virt-manager
  virt-viewer
  pkgs.qemu
  pkgs.qemu_kvm
  pkgs.libvirt
  virt-viewer
];
virtualisation.libvirtd.enable = true;
programs.virt-manager.enable = true;
}