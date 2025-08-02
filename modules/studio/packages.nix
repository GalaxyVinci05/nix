{ pkgs, ... }:

{
  # List packages specific to studio
  environment.systemPackages = with pkgs; [
    audacity
    guitarix
    kdePackages.kdenlive
    pipewire.jack
    qpwgraph
    reaper
    wineWowPackages.stable
    winetricks
    yabridge
    yabridgectl
  ];
}
