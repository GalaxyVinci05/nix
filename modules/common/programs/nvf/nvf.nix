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
      };

      useSystemClipboard = true;
      syntaxHighlighting = true;
      tabWidth = 4;
      undoFile.enable = true;
    };
  };
}
