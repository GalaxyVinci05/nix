{
  programs.nvf.settings.vim.languages = {
    enableLSP = true;
    enableFormat = true;
    enableTreesitter = true;
    enableExtraDiagnostics = true;

    nix.enable = true;
    clang = {
      enable = true;
      lsp.enable = true;
    };
  };
}
