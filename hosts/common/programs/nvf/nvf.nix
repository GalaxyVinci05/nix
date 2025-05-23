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

      # useSystemClipboard = true;
      syntaxHighlighting = true;
      undoFile.enable = true;
    };
  };
}
