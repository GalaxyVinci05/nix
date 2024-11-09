# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  # Nvidia
  hardware.graphics = {
    enable = true;
  };

  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Using Zen kernel
  boot.kernelPackages = pkgs.linuxPackages_zen;

  # NTFS support
  boot.supportedFilesystems = [ "ntfs" ];

  networking.hostName = "asus"; # Define your hostname.
  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  # Set your time zone.
  time.timeZone = "Europe/Rome";

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  # i18n.defaultLocale = "en_US.UTF-8";
  # console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "it";
  #   useXkbConfig = true; # use xkb.options in tty.
  # };

  # Enable the X11 windowing system.
  # services.xserver.enable = true;




  # Configure keymap in X11
  # services.xserver.xkb.layout = "us";
  # services.xserver.xkb.options = "eurosign:e,caps:escape";

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable sound.
  # hardware.pulseaudio.enable = true;
  # OR
  # sound.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # jack.enable = true;
    wireplumber.enable = true;
  };

  xdg.sounds.enable = true;

  # Bluetooth
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };

  hardware.opentabletdriver.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.galaxy = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ]; # Enable ‘sudo’ for the user.
    shell = pkgs.fish;
    packages = with pkgs; [
      alacritty
      brightnessctl
      btop
      cava
      dunst
      fastfetch
      ffmpegthumbnailer
      firefox
      glib
      gsettings-desktop-schemas
      hyprcursor
      hyprpaper
      hyprpicker
      hyprshot
      imv
      libcanberra-gtk3
      mpv
      onedrive
      pamixer
      pulsemixer
      polkit_gnome
      rofi-wayland
      unzip
      waybar
      wl-clipboard
      xdg-user-dirs
      tree
      # others
      discord
      spotify
      libreoffice
      gimp
      wineWowPackages.stable
    ];
  };

  programs = {
    dconf.enable = true;
    file-roller.enable = true;
    fish.enable = true;
    gamemode.enable = true;
    gamescope = {
      enable = true;
      capSysNice = true;
    };
    hyprlock.enable = true;
    hyprland = {
      enable = true;
      xwayland.enable = true;
    };
    obs-studio = {
      enable = true;
      enableVirtualCamera = true;
    };
    steam = {
      enable = true;
      gamescopeSession.enable = true;
    };
    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
      ];
    };
    # waybar.enable = true;
  };

  # environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #   vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    git
    neovim
    wget
  ];

  # Fonts
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      liberation_ttf
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji
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
    enable = true;
    enableSSHSupport = true;
  };

  # List services that you want to enable:
  services.blueman.enable = true;
  services.gvfs.enable = true;
  # services.onedrive.enable = true;
  # services.tlp.enable = true;
  services.tumbler.enable = true;

  services.displayManager.ly.enable = true;

  services = {
    asusd = {
      enable = true;
      enableUserService = true;
    };
  };

  services.logind.extraConfig = ''
    HandleLidSwitch=ignore
    HandleLidSwitchDocked=ignore
    HandleLidSwitchExternalPower=ignore
  '';

  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };

  systemd = {
    user.services.polkit-gnome-authentication-agent-1 = {
      description = "polkit-gnome-authentication-agent-1";
      wantedBy = [ "graphical-session.target" ];
      wants = [ "graphical-session.target" ];
      after = [ "graphical-session.target" ];
      serviceConfig = {
        Type = "simple";
        ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
        Restart = "on-failure";
        RestartSec = 1;
        TimeoutStopSec = 10;
      };
    };
  };

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  security.polkit.enable = true; 
 
  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  # system.copySystemConfiguration = true;

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  #
  # Most users should NEVER change this value after the initial install, for any reason,
  # even if you've upgraded your system to a new NixOS release.
  #
  # This value does NOT affect the Nixpkgs version your packages and OS are pulled from,
  # so changing it will NOT upgrade your system - see https://nixos.org/manual/nixos/stable/#sec-upgrading for how
  # to actually do that.
  #
  # This value being lower than the current NixOS release does NOT mean your system is
  # out of date, out of support, or vulnerable.
  #
  # Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
  # and migrated your data accordingly.
  #
  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "24.05"; # Did you read the comment?

}

