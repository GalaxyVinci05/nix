{ pkgs, pkgs-stable, pkgs-legacy, ... }:

{
  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      # cachix
      substituters = [
        "https://hyprland.cachix.org"
        "https://nix-community.cachix.org"
        "https://cache.nixos-cuda.org?priority=41"
      ];
      trusted-public-keys = [
        "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
        "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
        "cache.nixos-cuda.org:74DUi4Ye579gUqzH4ziL9IyiJBlDpMRn9MBN8oNan9M="
      ];
    };

    # Decrease nix store size
    # optimise.automatic = true;
    # gc = {
    #   automatic = true;
    #   dates = "weekly";
    #   options = "-d";
    # };
  };

  # Allow unfree for pkgs
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.microsoftVisualStudioLicenseAccepted = true;

  # Enable OpenGL and other graphics stuff
  hardware.graphics.enable = true;

  # Use the systemd-boot EFI boot loader.
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
    # NTFS support
    supportedFilesystems = [ "ntfs" ];
  };

  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  # Set your time zone.
  time.timeZone = "Europe/Rome";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.galaxy = {
    isNormalUser = true;
    description = "Vincenzo Filosa";
    extraGroups = [ "wheel" "audio" "networkmanager" "docker" "libvirtd" ]; # Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
  };

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # Fonts
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      liberation_ttf
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      unifont
      corefonts
      vista-fonts
      # (nerdfonts.override { fonts = [ "JetBrainsMono Nerd Font" ]; })
    ];

    # fontconfig = {
    #   defaultFonts = {
    #     monospace = [ "JetBrainsMono" ];
    #   };
    # };
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = false;
    enableSSHSupport = true;
  };

  security.polkit.enable = true;
  # security.pam.services.ly.enableGnomeKeyring = true;

  system.stateVersion = "24.05"; # Did you read the comment?

}

