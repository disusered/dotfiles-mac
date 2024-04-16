-- Parse Makefile and start Make targets is new tmux panes with vim-dispatch

local function get_make_targets()
  local targets = {}
  local makefile = io.open('Makefile', 'r')
  for line in makefile:lines() do
    local target = line:match('^([%w_%-]+):')
    if target and target ~= 'PHONY' then
      table.insert(targets, target)
    end
  end
  makefile:close()
  return targets
end

local function dispatch_make_target(target)
  vim.cmd(string.format([[Start make %s]], target))
end

local function select_make_target()
  local targets = get_make_targets()
  vim.ui.select(targets, {
    prompt = "Select Make target:",
    format_item = function(item) return item end,
  }, function(_, idx)
    if idx then
      dispatch_make_target(targets[idx])
    end
  end)
end

return {
  {
    'tpope/vim-dispatch',
    keys = {
      {
        "<leader>m",
        select_make_target,
        desc = "Start a Make target"
      },
    },
  }
}
