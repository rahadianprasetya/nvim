local M = {}

M.config = function()
  require("luasnip").config.set_config {
    history = true,
    update_events = "TextChangedI", -- 🔥 ini kunci fix-nya
    region_check_events = "InsertEnter",
    delete_check_events = "InsertLeave",
  }
end

return M
