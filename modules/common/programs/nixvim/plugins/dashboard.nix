{
  programs.nixvim.plugins.dashboard = {
    enable = true;
    settings = {
      change_to_vcs_root = true;
      config = {
        footer = [
          "Made with ❤️"
        ];
        header = [
          ""
          ""
          ""
          ""
          ""
          ""
          ""
          ""
          "███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
          "████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
          "██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
          "██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
          "██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
          "╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
        ];
        # mru = {
        #   limit = 20;
        # };
        project = {
          enable = false;
        };
        center = [
          {
            action = "lua print(2)";
            desc = "Find File           ";
            desc_hl = "String";
            icon = " ";
            icon_hl = "Title";
            key = "b";
            key_format = " %s";
            key_hl = "Number";
            keymap = "SPC f f";
          }
          {
            action = {
              __raw = "function() print(3) end";
            };
            desc = "Find Dotfiles";
            icon = " ";
            key = "f";
            key_format = " %s";
            keymap = "SPC f d";
          }
        ];

        week_header = {
          enable = false;
        };
      };
      theme = "doom";
    };
  };
}
