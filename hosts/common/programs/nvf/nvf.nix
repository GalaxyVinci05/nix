{
  programs.nvf = {
    enable = true;
    enableManpages = true;

    settings.vim = {
      theme = {
        enable = true;
        name = "tokyonight";
        style = "night";
      };

      options = {
        pumheight = 10;
        tabstop = 4;
        shiftwidth = 4;
      };

      clipboard = {
        enable = true;
        providers.wl-copy.enable = true;
        registers = "unnamedplus";
      };

      # useSystemClipboard = true;
      syntaxHighlighting = true;
      undoFile.enable = true;
    };
  };
}
