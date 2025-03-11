{ pkgs, ... }: {
  programs.neovim = {
    enable = false;
    defaultEditor = false;
    viAlias = true;
    vimAlias = true;
  };
}
