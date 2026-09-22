{
  programs.nvf.settings.vim.statusline = {
    lualine = {
      enable = true;

      setupOpts = {
        options = {
          component_separators = {
            left = "";
            right = "";
          };

          section_separators = {
            left = "";
            right = "";
          };

          ignore_focus = [
            "neo-tree"
          ];
        };

        sections = {
          lualine_a = [
            {
              "@1" = "mode";
              icons_enabled = true;
              separator = {
                left = "▎";
                right = "";
              };
            }
          ];

          lualine_b = [
            {
              "@1" = "branch";
              icon = "";
              separator = { right = ""; };
            }
          ];

          lualine_c = [
            {
              "@1" = "filetype";
              colored = true;
              icon_only = true;
              icon = { align = "left"; };
            }
            {
              "@1" = "filename";
              symbols = { modified = " "; readonly = " "; };
              separator = { right = ""; };
            }
          ];

          lualine_y = [
            {
              "@1" = "progress";
              separator = { left = ""; };
            }
          ];

          lualine_z = [
            {
              "@1" = "location";
              separator = { left = ""; };
            }
            {
              "@1" = "fileformat";
              color = { fg = "black"; };
              symbols = {
                unix = ""; # e712
                dos = "";  # e70f
                mac = "";  # e711
              };
            }
          ];
        };
      };
    };
  };
}
