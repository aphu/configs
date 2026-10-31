return {
  "navarasu/onedark.nvim",
  priorty = 1000,
  config = function()
    require("onedark").setup({
      style = "warm",
    })
    require("onedark").load()
  end,
}
