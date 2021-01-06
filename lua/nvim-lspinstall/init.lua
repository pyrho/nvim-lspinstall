local vim = vim
local runShellCommand = require('nvim-lspinstall/run-shell-command')

local function uname()
  local f = assert(io.popen('uname', 'r'))
  local s = assert(f:read('*a'))
  f:close()
  s = string.gsub(s, '^%s+', '')
  s = string.gsub(s, '%s+$', '')
  s = string.gsub(s, '[\n\r]+', ' ')
  return s
end

local linux_cmds = {
  ['tsserver'] = 'sudo npm install -g typescript typescript-language-server',
  ['sumneko_lua'] = 'bash ./scripts/Linux/lua.sh',
  ['rust_analyzer'] = 'bash ./scripts/Linux/rust.sh',
}

local installLang = function()
  if uname() ~= 'Linux' then
    error('nvim-lspinstall currently only supports linux')
    return
  end
  local lang = vim.g["Lsp_Install_Lang"]
  if linux_cmds[lang] then
    runShellCommand(linux_cmds[lang])
  end
end

return {
  installLang = installLang
}
