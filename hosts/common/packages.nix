{ pkgs, ... }:

{
  # List common packages installed in system profile.
  environment.systemPackages = with pkgs; [
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
  ];
}
