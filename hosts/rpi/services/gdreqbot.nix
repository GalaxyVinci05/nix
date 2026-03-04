{
  services.nginx = {
    enable = true;
    proxyTimeout = "3600s";
    virtualHosts."gdreqbot.ddns.net" = {
      forceSSL = true;
      enableACME = true;
      locations."/" = {
        proxyPass = "http://localhost:3000";
        proxyWebsockets = false;
      };
      locations."/ws" = {
        proxyPass = "http://localhost:8080";
        proxyWebsockets = true;

        extraConfig = ''
            proxy_read_timeout 3600s;
            proxy_send_timeout 3600s;
            keepalive_timeout 3600s;
        '';
      };
    };
  };

  security.acme = {
    acceptTerms = true;   
    certs = { 
      "gdreqbot.ddns.net".email = "vincenzopaolo0@gmail.com"; 
    }; 
  };
}
