{ pkgs, pkgs-stable, ... }:

{
  # List asus packages installed in system profile.
  environment.systemPackages = with pkgs; [
    nvtopPackages.intel
  ] ++ [

    # Stable packages
      # pkgs-stable.blender
  ];
}
