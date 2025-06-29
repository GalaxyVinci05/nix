{ config, pkgs-stable, ... }: {
  services.nextcloud = {
    enable = true;
    https = true;
    database.createLocally = true;
    configureRedis = true;

    hostName = "galaxyserver.ddns.net";
    maxUploadSize = "32G";

    phpOptions."opcache.interned_strings_buffer" = "64";
    config = {
      dbtype = "pgsql";
      adminpassFile = "/etc/adminpass";
    };
    settings = {
      trusted_domains = [ "192.168.1.3" "galaxyserver.ddns.net" ];
      log_type = "file";
    };

    package = pkgs-stable.nextcloud31;
  };

  services.nginx = {
    enable = true;
    proxyTimeout = "3600s";
    virtualHosts.${config.services.nextcloud.hostName} = {
      forceSSL = true;
      enableACME = true;
    };
  };

  security.acme = {
    acceptTerms = true;   
    certs = { 
      ${config.services.nextcloud.hostName}.email = "vincenzopaolo0@gmail.com"; 
    }; 
  };
}
