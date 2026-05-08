{ pkgs, ... }: {
    services.transmission = {
      enable = false;
      package = pkgs.transmission_4;
    };
}
