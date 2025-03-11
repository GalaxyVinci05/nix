{ pkgs, pkgs-stable, ... }:

{
  # List packages specific to hypr ecosystem
  environment.systemPackages = with pkgs; [
    alacritty
    brightnessctl
    dunst
    ffmpegthumbnailer
    file-roller
    glib
    gsettings-desktop-schemas
    hyprcursor
    hyprpaper
    hyprpicker
    hyprshot
    imv
    libcanberra-gtk3
    mpv
    pulsemixer
    polkit_gnome
    rofi-wayland
    wl-clipboard
    xdg-user-dirs
  ] ++ [

    # Stable packages
    # pkgs-stable.cava
  ];
}
