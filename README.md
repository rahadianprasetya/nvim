# NVChad Development Setup

This README describes a customized **NVChad** configuration tailored for development using multiple programming languages and productivity-enhancing keybindings.

## 🚀 Supported Languages

This NVChad setup is configured for:

- C Language
- Go (Golang)
- Rust

Each language is supported with proper tooling such as LSP (Language Server Protocol), syntax highlighting, and formatting to improve development workflow.

## ⌨️ Keybindings

### 📌 Copy Line

- Shortcut: `Ctrl + D`
- Description: Duplicate (copy) the current line quickly.

### 📌 Move Line Up / Down

- Shortcut:
  - `Ctrl + Shift + ↑` → Move line up
  - `Ctrl + Shift + ↓` → Move line down
- Description: Move the current line up or down without cutting and pasting manually.

## ⚙️ Requirements

Make sure the following dependencies are installed:

- Neovim (latest stable version recommended)
- NVChad

### Language Tools

- C compiler (e.g., `gcc` or `clang`)
- Go (https://go.dev/)
- Rust (https://www.rust-lang.org/)

## 📦 Installation

1. Install Neovim
2. Install NVChad:

```bash
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
