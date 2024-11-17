{ pkgs-stable, ... }: {
  systemd.services.pm2 = {
    enable = true;
    description = "PM2 process manager";
    after = [ "network.target" ];
    wantedBy = [ "multi-user.target" ];
    environment = {
      PM2_HOME = "/home/server/.pm2";
    };
    serviceConfig = {
      Type = "forking";
      User = "server";
      LimitNOFILE = "infinity";
      LimitNPROC = "infinity";
      LimitCORE = "infinity";
      PIDFile = "/home/server/.pm2/pm2.pid";
      Restart = "on-failure";

      ExecStart = "${pkgs-stable.pm2}/bin/pm2 resurrect";
      ExecReload = "${pkgs-stable.pm2}/bin/pm2 reload all";
      ExecStop = "${pkgs-stable.pm2}/bin/pm2 kill";
    };
  };
}
