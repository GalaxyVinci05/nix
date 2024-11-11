# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  hardware.graphics.extraPackages = with pkgs; [
    intel-media-driver
  ];

  networking.hostName = "dell"; # Define your hostname.

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  system.stateVersion = "24.05"; # Did you read the comment?

}

