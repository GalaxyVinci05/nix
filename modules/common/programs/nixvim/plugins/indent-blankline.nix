{
  programs.nixvim.plugins.indent-blankline = {
    enable = true;
    settings = {
      exclude = {
        buftypes = [
          "terminal"
          "quickfix"
          "dashboard"
          "nofile"
        ];
        filetypes = [
          ""
          "checkhealth"
          "help"
          "lspinfo"
          "packer"
          "TelescopePrompt"
          "TelescopeResults"
          "yaml"
          "Trouble"
          "alpha"
          "dashboard"
          "lazy"
          "mason"
          "neo-tree"
          "notify"
          "snacks_notif"
          "snacks_terminal"
          "snacks_win"
          "toggleterm"
          "trouble"
        ];
      };
      indent = {
        char = "│";
        tab_char = "|";
      };
      scope = {
        show_end = false;
        show_exact_scope = true;
        show_start = false;
      };
    };
  };
}
