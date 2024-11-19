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

      lsp = {
        enable = true;
        servers = {
          clangd.enable = true;
        };
      };

      cmp = {
        enable = true;
        autoEnableSources = true;
        settings.sources = [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
        ];
      };

      indent-blankline = {
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

      dashboard = {
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
    };
  };
}
