{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Nvidia
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  # Using Zen kernel
  boot.kernelPackages = pkgs.linuxPackages_zen;

  networking.hostName = "asus"; # Define your hostname.

  # environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # Fixes clock in Windows dual boot
  time.hardwareClockInLocalTime = true;

  system.stateVersion = "24.05"; # Did you read the comment?

}

