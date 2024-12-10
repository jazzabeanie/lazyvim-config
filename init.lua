-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("notify")(
  "Some useful shortcuts: \n"..
    "end<leader>rg, <leader>/, <leader>fr. Also use :Notifications to see a history of them"
)
require("notify")(
  "use Q with macros (:h Q for more info)"
)
