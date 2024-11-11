{ pkgs, ... }:

{
  # List common packages installed in system profile.
  environment.systemPackages = with pkgs; [
    # System
    alacritty
    brightnessctl
    btop
    cava
    dunst
    fastfetch
    ffmpegthumbnailer
    firefox
    git
    glib
    gsettings-desktop-schemas
    hyprcursor
    hyprpaper
    hyprpicker
    hyprshot
    imv
    libcanberra-gtk3
    mpv
    neovim
    onedrive
    pamixer
    pulsemixer
    polkit_gnome
    rofi-wayland
    unzip
    waybar
    wget
    wl-clipboard
    xdg-user-dirs
    tree

    # Others
    discord
    gimp
    libreoffice
    spotify
  ];
}
