# nvim-lspinstall
## What is it?
Recently, neovim removed the `:LspInstall` function. It made it really easy to install language servers for its built in lsp, so I'm making a replacement!
## Languages Currently Supported
- Lua (`:call LspInstall('sumneko_lua')`)
  - Prerequisites: [ninja](https://github.com/ninja-build/ninja/wiki/Pre-built-Ninja-packages)
  - When configuring LSP for lua, you will need the path to your lua-langauge-server installation. Nvim-lspinstall places it at `$HOME/.local/share/nvim/lspinstall/lua-language-server/`.
- Rust (`:call LspInstall('rust_analyzer')`)
- Typescript/Javascript (`:call LspInstall('tsserver')`)
  - A prerequisite is that you have [nodejs](https://nodejs.org) and npm installed.
  - Depending on how you have node/npm set it up, you may need sudo permissions to complete the installation.
## Langauges Coming Soon
These are the languages we are actively developing support for.
- C / C++
## Contributing
Contributions would be greatly appreciated!
- Platform: I am currently only working on nvim-lspinstall for linux. If people want to help add support for windows and macOS, that would be great.
- Langauges: The more people writing install scripts for languages, the more languages we can support.