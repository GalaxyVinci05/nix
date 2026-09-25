{ pkgs, ... }:

{
  # List packages specific to studio
  environment.systemPackages = with pkgs; [
    dbeaver-bin
    gcc
    jdk25
    sqlcl
  ];
}
