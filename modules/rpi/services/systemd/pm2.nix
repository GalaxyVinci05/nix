{ pkgs-stable, ... }: {
  systemd.services.pm2 = {
    enable = true;
    description = "pm2";
    unitConfig = {
      Type = "simple";
    };
    wantedBy = [ "multi-user.target" ];
    serviceConfig = {
      ExecStart = "${pkgs-stable.pm2}/bin/pm2 resurrect";
      ExecReload = "${pkgs-stable.pm2}/bin/pm2 reload all";
      ExecStop = "${pkgs-stable.pm2}/bin/pm2 kill";
    };
  };
}
