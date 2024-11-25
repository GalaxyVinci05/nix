{ inputs, config, ... }: {
  programs.nvf.settings.vim.autocomplete = {
    nvim-cmp = {
      enable = true;

      
      format = {
        _type = "lua-inline";
	expr = ''
	  function(entry, item)
            local widths = {
              abbr = vim.g.cmp_widths and vim.g.cmp_widths.abbr or 40,
              menu = vim.g.cmp_widths and vim.g.cmp_widths.menu or 30,
            }

            for key, width in pairs(widths) do
              if item[key] and vim.fn.strdisplaywidth(item[key]) > width then
                item[key] = vim.fn.strcharpart(item[key], 0, width - 1) .. "…"
              end
            end

            return item
          end
	'';
      };
    };
  };
}
