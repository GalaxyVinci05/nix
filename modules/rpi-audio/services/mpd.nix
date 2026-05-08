{ config, ... }: {
  services.mpd = {
    enable = true;
    settings = {
      audio_output = [
        #{
        #  type = "pipewire";
        #  name = "My PipeWire Output";
        #}
        {
          type = "alsa";
          name = "ALSA Output";
          mixer_type = "hardware";
          mixer_device = "default";
          mixer_control = "PCM";
        }
      ];
      bind_to_address = "any";
    };
    user = "server";
    openFirewall = true;
  };

  systemd.services.mpd.environment = {
    XDG_RUNTIME_DIR = "/run/user/${toString config.users.users.server.uid}";
  };
}
