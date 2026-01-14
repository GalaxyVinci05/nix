{ inputs, pkgs, ... }:

{
  # List packages for wm ecosystems
  environment.systemPackages = with pkgs; [
    alacritty
    brightnessctl
    dunst
    ffmpegthumbnailer
    file-roller
    glib
    gsettings-desktop-schemas
    imv
    libcanberra-gtk3
    mpv
    pulsemixer
    polkit_gnome
    rofi
    wl-clipboard
    xdg-user-dirs

    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
