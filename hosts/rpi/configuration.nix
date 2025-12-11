{ config, lib, pkgs-stable, pkgs-legacy, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.settings.substituters = [ "https://nix-community.cachix.org" ];
  nix.settings.trusted-public-keys = [ "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs=" ];

  # Decrease nix store size
  # nix.optimise.automatic = true;
  # nix.gc = {
  #   automatic = true;
  #   dates = "weekly";
  #   options = "-d";
  # };

  # Use the extlinux boot loader. (NixOS wants to enable GRUB by default)
  boot.loader.grub.enable = false;
  # Enables the generation of /boot/extlinux/extlinux.conf
  boot.loader.generic-extlinux-compatible.enable = true;

  # boot.kernelPackages = pkgs-stable.linuxPackages_rpi4;
  # boot.binfmt.emulatedSystems = [ "i686-linux" "armv7l-linux" ];

  # NTFS support
  boot.supportedFilesystems = [ "ntfs" ];

  # boot.extraModprobeConfig = ''
  #   options usb-storage.quirks=152d:0578:u 
  # '';

  swapDevices = [ {
    device = "/var/lib/swapfile";
    size = 8*1024;
  } ];

  # Set your time zone.
  time.timeZone = "Europe/Rome";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.server = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ]; # Enable ‘sudo’ for the user.
    shell = pkgs-stable.fish;
  };

  # User with the only purpose of showing btop on an LCD screen
  users.users.stats = {
    isNormalUser = true;
    shell = pkgs-stable.bash;
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };

  system.stateVersion = "24.05"; # Did you read the comment?

}

