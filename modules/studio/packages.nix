{ pkgs, pkgs-stable, ... }:

{
  # List packages specific to studio
  environment.systemPackages = with pkgs; [
    audacity
    guitarix
    pipewire.jack
    qpwgraph
    yabridge
    yabridgectl
  ] ++ [
    # Stable
    pkgs-stable.reaper
  ];
}
