{
  services.nginx = {
    enable = true;
    proxyTimeout = "3600s";
    virtualHosts."gdreqbot.ddns.net" = {
      forceSSL = true;
      enableACME = true;
      locations."/" = {
        proxyPass = "http://localhost:3000";
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
