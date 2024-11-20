{
  programs.nixvim = {
    enable = true;

    colorschemes.tokyonight = {
      enable = true;
      settings = {
        style = "moon";
      };
    };

    plugins = {
      bufferline.enable = true;
      cmp-buffer.enable = true;
      cmp-nvim-lsp.enable = true;
      cmp-path.enable = true;
      conform-nvim.enable = true;
      dressing.enable = true;
      flash.enable = true;
      friendly-snippets.enable = true;
      gitsigns.enable = true;
      lualine.enable = true;
      mini.enable = true;
      neo-tree.enable = true;
      noice.enable = true;
      nui.enable = true;
      persistence.enable = true;
      snacks.enable = true;
      telescope.enable = true;
      todo-comments.enable = true;
      trouble.enable = true;
      web-devicons.enable = true;
      which-key.enable = true;
    };
  };
}
