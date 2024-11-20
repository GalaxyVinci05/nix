{
  programs.nvf.settings.vim.statusline = {
    lualine = {
      enable = true;

      componentSeparator = {
        left = "";
        right = "";
      };

      sectionSeparator = {
        left = "";
        right = "";
      };

      activeSection = {
        a = [
          ''
            {
              "mode",
              separator = {
                right = ''
              },
            }
          ''
        ];

        b = [
          ''
            {
              "branch",
              icon = '',
              separator = { right = '' }
            }
          ''
        ];

        c = [
          ''
            {
              "filetype",
              colored = true,
              icon_only = true,
              icon = { align = 'left' }
            }
          ''
          ''
            {
              "filename",
              symbols = { modified = ' ', readonly = ' ' },
              separator = { right = '' }
            }
          ''
        ];

        y = [
          ''
            {
              "progress",
              separator = { left = '' }
            }
          ''
        ];

        z = [
          ''
            {
              "location",
              separator = { left = '' }
            }
          ''
          ''
            {
              "fileformat",
              color = { fg = 'black' },
              symbols = {
                unix = '', -- e712
                dos = '',  -- e70f
                mac = '',  -- e711
              }
            }
          ''
        ];
      };
    };
  };
}
