# Zed LSP Machine Bootstrap

Run once on a new Linux machine.

## 1) Ensure PATH contains user bins

Add to `~/.zshrc`:

```sh
export PATH="$PATH:$HOME/.cargo/bin:$HOME/go/bin:$HOME/.local/bin:$HOME/.pyenv/shims"
```

Then reload shell:

```sh
source ~/.zshrc
```

## 2) Install language servers and tools

```sh
# Rust
rustup component add rust-analyzer

# Go
go install golang.org/x/tools/gopls@latest

# Python formatter/linter
pip install ruff

# YAML + JSON + HTML + CSS language servers
npm install -g yaml-language-server vscode-langservers-extracted
```

## 3) Verify binaries

```sh
command -v rust-analyzer gopls ruff yaml-language-server \
  vscode-json-language-server vscode-html-language-server vscode-css-language-server
```

## 4) Optional for GUI launcher

If Zed started from desktop cannot see PATH, update your local desktop entry:

`~/.local/share/applications/dev.zed.Zed.desktop`

Use:

`Exec=env PATH=$HOME/.cargo/bin:$HOME/go/bin:$HOME/.local/bin:$HOME/.pyenv/shims:$PATH zed %F`
