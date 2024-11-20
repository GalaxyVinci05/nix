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
