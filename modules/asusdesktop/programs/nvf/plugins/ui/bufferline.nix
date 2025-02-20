{
  programs.nvf.settings.vim.tabline = {
    nvimBufferline = {
      enable = true;

      mappings = {
        closeCurrent = "<leader>bd";
      };

      setupOpts.options = {
        always_show_bufferline = true;
        indicator.style = "icon";
        numbers = "none";

        middle_mouse_command = {
          _type = "lua-inline";
          expr = ''
            function(bufnum)
              require("bufdelete").bufdelete(bufnum, false)
            end
          '';
        };

        offsets = [
          {
            filetype = "neo-tree";
            highlight = "Directory";
            separator = true;
            text = "File Explorer";
          }
        ];
      };
    };
  };
}
