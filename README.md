# nvim

## Description

This repository contains a Neovim configuration setup using Lua. It includes various plugins and settings to enhance the Neovim experience.

## Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/Phastboy/nvim.git ~/.config/nvim
   ```
2. Install the required plugins:
   ```sh
   nvim +PackerSync
   ```

## Usage

Open Neovim and start using the configured setup. You can customize the configuration by editing the files in the `lua` directory.

## Key Mappings

The available key mappings are documented in the `KEYS.md` file. Please refer to it for detailed information about the key mappings.

## Features

- Enhanced notifications and messages using `noice.nvim`.
- File explorer with a floating window using `oil.nvim`.
- Fuzzy finder and more using `telescope.nvim`.
- Bufferline management with `bufferline.nvim`.
- Multicursor support with `multicursor.nvim`.
- Theme switching with `theming.nvim`.

For dictionary complication, you might need:

```
mkdir -p ~/.local/share/dict
curl -o ~/.local/share/dict/words https://raw.githubusercontent.com/dwyl/english-words/master/words.txt
```

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.
