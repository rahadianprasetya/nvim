# NVChad Development Setup

This repository contains my personal **NVChad configuration** optimized for modern development workflows.

👉 Repository: https://github.com/rahadianprasetya/nvim

## 🚀 Supported Languages

This setup is configured for:

- C Language
- Go (Golang)
- Rust

Each language is supported with LSP (Language Server Protocol), syntax highlighting, and formatting to improve development productivity.

## ⌨️ Keybindings

### 📌 Copy Line

- Shortcut: `Ctrl + D`  
- Description: Duplicate (copy) the current line instantly.

### 📌 Move Line Up / Down

- Shortcut:
  - `Ctrl + Shift + ↑` → Move line up
  - `Ctrl + Shift + ↓` → Move line down  
- Description: Move the current line up or down without manual cut and paste.

### 📌 Code Action

- Shortcut: `<Space> + .`  
- Description: Trigger LSP code actions (e.g., quick fixes, refactor, organize imports).

### 📌 Go to Definition

- Shortcut: `gd`  
- Description: Jump to the definition of a function, variable, or type.

### 📌 Find References (Hover + Action)

- Action:
  - Hover the cursor over a symbol
  - Trigger reference search via LSP  
- Description: Find all references/usages of the symbol under the cursor.

## ⚙️ Requirements

Make sure you have the following installed:

- Neovim (latest version recommended)
- NVChad

### Language Tools

- C compiler (`gcc` or `clang`)
- Go (https://go.dev/)
- Rust (https://www.rust-lang.org/)

## 📦 Installation

Clone this repository into your Neovim config directory:

```bash
git clone https://github.com/rahadianprasetya/nvim ~/.config/nvim
