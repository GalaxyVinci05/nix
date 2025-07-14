{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  nix.settings = {
    # cachix
    substituters = ["https://cuda-maintainers.cachix.org"];
    trusted-public-keys = ["cuda-maintainers.cachix.org-1:0dq3bujKpuEPMCX6U4WylrUDZ9JyUG0VpVZa7CNfq5E="];
  };

  # Nvidia
  nixpkgs.config.cudaSupport = true;
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = true;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.beta;
  };

  # Using Zen kernel
  boot.kernelPackages = pkgs.linuxPackages_zen;

  networking.hostName = "asus"; # Define your hostname.

  networking.firewall = {
    enable = true;
    allowedUDPPorts = [ 19132 19133 ];
  };

  networking.nameservers = [ "1.1.1.1" "1.0.0.1" ];
  programs.mtr.enable = true;

  systemd.services.nix-daemon.serviceConfig = {
    MemoryHigh = "24G";
    MemoryMax = "32G";
  };

  # Fixes clock in Windows dual boot
  # time.hardwareClockInLocalTime = true;

  system.stateVersion = "24.05"; # Did you read the comment?

}

