{ pkgs, pkgs-stable, ... }:

{
  # List packages specific to studio
  environment.systemPackages = with pkgs; [
    audacity
    guitarix
    # kdePackages.kdenlive
    pipewire.jack
    qpwgraph
    reaper
    wineWow64Packages.stable
    winetricks
    yabridge
    yabridgectl
  ]; #++ [
    # pkgs-stable.guitarix
  #];
}
