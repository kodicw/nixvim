{
  enableMan = true;
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  plugins = {
    chadtree.enable = true;
    nix.enable = true;
    multicursors.enable = true;
    endwise.enable = true;
    mini.enable = true;
    bufferline.enable = true;
    copilot-lua.suggestion.enabled = false;
    copilot-lua.panel.enabled = false;
    luasnip.enable = true;
    auto-save.enable = true;
    treesitter.enable = true;
    lspkind.enable = true;
    lint.enable = true;
    wtf.enable = true;
    surround.enable = true;
    oil.enable = true;
    lualine.enable = true;
    notify.enable = true;
    notify.level = "info";
    lsp-format.enable = true;
    nvim-cmp = {
      enable = true;
      autoEnableSources = true;
      snippet.expand = "luasnip";
      sources = [
        { name = "nvim_lsp"; }
        { name = "path"; }
        { name = "luasnip"; }
        { name = "buffer"; }
        { name = "treesitter"; }
        { name = "calc"; }
        { name = "dictionary"; }
        { name = "emoji"; }
        { name = "copilot"; }
      ];
      mapping = {
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<Tab>" = {
          action = ''
            function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              else
                fallback()
              end
            end
          '';
          modes = [
            "i"
            "s"
          ];
        };
      };
    };
    telescope = {
      enable = true;

      defaults.file_ignore_patterns = [ "^.git/" ];
      keymaps."<leader>e" = "find_files";
    };
    which-key.enable = true;
    lsp = {
      enable = true;
      servers = {
        nil_ls.enable = true;
        tsserver.enable = true;
        pyright = {
          enable = true;
          autostart = true;
        };
        ruff-lsp = {
          enable = true;
          autostart = true;
        };

        rnix-lsp = {
          enable = true;
          autostart = true;
        };
        nixd = {
          enable = true;
          autostart = true;
        };
        zls.enable = true;
      };
    };
  };
  colorschemes.onedark.enable = true;
  clipboard.providers.wl-copy.enable = true;
}
































