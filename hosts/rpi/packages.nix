{ pkgs-stable, ... }:

{
  # List rpi packages installed in system profile.
  environment.systemPackages = with pkgs-stable; [
    btop
    certbot
    cpufetch
    fastfetch
    git
    jdk21_headless
    nodejs
    unzip
    wget
    tree
    yarn
    zip
  ];
}
