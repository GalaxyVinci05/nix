{
  programs.nvf.settings.vim = {
    filetree.neo-tree = {
      enable = true;

      setupOpts = {
        close_if_last_window = true;
        filesystem = {
          hijack_netrw_behavior = "open_current";
          follow_current_file.enabled = true;
        };

        window = {
          mappings = {
            l = "open";
            h = "close_node";
          };
        };

        default_component_configs = {
          indent = {
            with_expanders = true;
            expander_collapsed = "";
            expander_expanded = "";
            expander_highlight = "NeoTreeExpander";
          };
          git_status = {
            symbols = {
                unstaged = "󰄱";
                staged = "󰱒";
            };
          };
        };
      };
    };

    maps = {
      normal."<leader>e" = {
        desc = "Toggle Neotree";
        action = "<cmd>Neotree toggle reveal<cr>";
      };
    };
  };
}
