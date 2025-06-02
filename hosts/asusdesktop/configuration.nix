{ config, lib, pkgs-stable, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
  };

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.nvidia.acceptLicense = true;

  # Decrease nix store size
  nix.optimise.automatic = true;
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "-d";
  };

  services.xserver.videoDrivers = ["nvidia"];

  # Graphics
  hardware = {
    graphics.enable = true;

    nvidia = {
      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.legacy_390;
    };
  };

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  # NTFS support
  boot.supportedFilesystems = [ "ntfs" ];

  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.
  networking.hostName = "asusdesktop"; # Define your hostname.

  # Set your time zone.
  time.timeZone = "Europe/Rome";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "it_IT.UTF-8";
    LC_MEASUREMENT = "it_IT.UTF-8";
    LC_MONETARY = "it_IT.UTF-8";
    LC_NAME = "it_IT.UTF-8";
    LC_NUMERIC = "it_IT.UTF-8";
    LC_PAPER = "it_IT.UTF-8";
    LC_TELEPHONE = "it_IT.UTF-8";
    LC_TIME = "it_IT.UTF-8";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.galaxy = {
    isNormalUser = true;
    description = "Vincenzo Filosa";
    extraGroups = [ "wheel" "networkmanager" "audio" ]; # Enable ‘sudo’ for the user.
    shell = pkgs-stable.fish;
  };

  # Fonts
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs-stable; [
      nerd-fonts.jetbrains-mono
      liberation_ttf
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji
      unifont
      # (nerdfonts.override { fonts = [ "JetBrainsMono Nerd Font" ]; })
    ];

    # fontconfig = {
    #   defaultFonts = {
    #     monospace = [ "JetBrainsMono" ];
    #   };
    # };
  };

  # Qt theming
  qt = {
    enable = true;
    platformTheme = "qt5ct";
    style = "kvantum";
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = false;
    enableSSHSupport = true;
  };

  # systemd = {
  #   user.services.polkit-gnome-authentication-agent-1 = {
  #     description = "polkit-gnome-authentication-agent-1";
  #     wantedBy = [ "graphical-session.target" ];
  #     wants = [ "graphical-session.target" ];
  #     after = [ "graphical-session.target" ];
  #     serviceConfig = {
  #       Type = "simple";
  #       ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
  #       Restart = "on-failure";
  #       RestartSec = 1;
  #       TimeoutStopSec = 10;
  #     };
  #   };
  # };

  security.polkit.enable = true;
  # security.pam.services.ly.enableGnomeKeyring = true;

  system.stateVersion = "24.05"; # Did you read the comment?

}

