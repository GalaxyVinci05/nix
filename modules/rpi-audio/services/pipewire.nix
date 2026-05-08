{
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;

  services.pipewire = {
    socketActivation = false;
    enable = true;
    audio.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;
  };

  systemd.user.services.wireplumber.wantedBy = [ "default.target" ];
}
