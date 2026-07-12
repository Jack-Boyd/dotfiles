return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        separator_style = "slope",
        close_command = ":Bdelete",
      },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      scroll = {
        enabled = false,
      },
      dashboard = {
        preset = {
          header = [[
                              ......                                                                
                          .=%@@@@@@@@#=..                           :#######*.                      
                        .-@@@@@@@@@@@@@@%:.                         :@@@@@@@%.                      
                       .=@@@@@@@@@@@@@@@@@@-..                      :@@@@@@@%.                      
                      .:@@@@@@@@@@@@@@@@@@@@%:.                     :@@@@@@@%.                      
                      .*@@@@@@@*...:#@@@@@@@@@%:.                   :@@@@@@@%.                      
                      .%@@@@@@@:    .:#@@@@@@@@@%:                  :@@@@@@@%.                      
                      .%@@@@@@@:      .:@@@@@@@@@@%..               :@@@@@@@%.                      
                      .%@@@@@@@:        .:%@@@@@@@@@#..             :@@@@@@@%.                      
                      .%@@@@@@@:          .-%@@@@@@@@@*.            :@@@@@@@%.                      
                      .%@@@@@@@:            .=@@@@@@@@@@*..         :@@@@@@@%.                      
                      .%@@@@@@@:             ..=@@@@@@@@@@*.        :@@@@@@@%.                      
                      .%@@@@@@@:                .=@@@@@@@@@@+.      :@@@@@@@%.                      
                      .%@@@@@@@:                  .+@@@@@@@@@@=.    :@@@@@@@%.                      
                      .%@@@@@@@:                    .*@@@@@@@@@@=.. :@@@@@@@%.                      
                      .%@@@@@@@:                     ..*@@@@@@@@@+. :@@@@@@@%.                      
                      .%@@@@@@@:                        .*@@@@@#..  :@@@@@@@%.                      
                      .*######*:                         ..#@%-.    .*######*.                      
                                                           ...                                      
          ]],
        },
      },
    },
  },
}
