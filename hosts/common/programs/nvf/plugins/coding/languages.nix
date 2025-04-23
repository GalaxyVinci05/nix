{
  programs.nvf.settings.vim.languages = {
    enableLSP = true;
    enableFormat = false;
    enableTreesitter = true;
    enableExtraDiagnostics = true;

    assembly.enable = true;
    clang.enable = true;
    # csharp = {
    #   enable = true;
    # lsp.server = "omnisharp";
    # };
    # css.enable = true;
    # html.enable = true;
    # java.enable = true;
    # lua.enable = true;
    markdown.enable = true;
    nix.enable = true;
    # python.enable = true;
    ts = {
      enable = true;
      extraDiagnostics.enable = false;
    };
  };
}
