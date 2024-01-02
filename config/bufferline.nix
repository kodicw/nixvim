{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  plugins = {
    bufferline.enable = true;
    luasnip.enable = true;
    auto-save.enable = true;
    treesitter.enable = true;
    cmp-nvim-lsp.enable = true;
    copilot-cmp.enable = true;
    cmp-buffer.enable = true;
    cmp-nvim-lua.enable = true;
    cmp-snippy.enable = true;
    cmp-path.enable = true;
    lint.enable = true;
    lsp-format.enable = true;
    nvim-cmp = {
      enable = true;
      autoEnableSources = true;
      sources = [
        { name = "nvim_lsp"; }
        { name = "path"; }
        { name = "buffer"; }
        { name = "treesitter"; }
        { name = "snippy"; }
        { name = "copilot"; }
      ];
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
      };

    };
  };
  colorschemes.onedark.enable = true;
  clipboard.providers.wl-copy.enable = true;
}














