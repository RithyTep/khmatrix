# khmatrix

Matrix rain effect with Khmer characters - a fork of cmatrix.

![Khmer Matrix](https://img.shields.io/badge/language-Khmer-blue)
![License](https://img.shields.io/badge/license-GPL--3.0-green)

## Features

- Authentic cmatrix experience with Khmer Unicode characters (ក ខ គ ...)
- All original cmatrix features: bold, async, rainbow, colors
- Smooth terminal animation

## Requirements

- macOS / Linux
- ncurses library
- Terminal with UTF-8 support
- Khmer font (Noto Sans Khmer recommended)

## Installation

### Build from Source

```bash
git clone https://github.com/RithyTep/khmatrix.git
cd khmatrix/cmatrix-src
autoreconf -i
./configure
make
sudo make install
```

Then run with:
```bash
cmatrix -K
```

### Or use the wrapper script

```bash
cp khmatrix-bin ~/.local/bin/
cp khmatrix ~/.local/bin/
chmod +x ~/.local/bin/khmatrix ~/.local/bin/khmatrix-bin
```

## Usage

```bash
khmatrix
```

### Options (same as cmatrix)

| Flag | Description |
|------|-------------|
| `-a` | Asynchronous scroll |
| `-b` | Bold characters |
| `-B` | All bold |
| `-s` | Screensaver mode |
| `-u [0-10]` | Update delay (default: 4) |
| `-C [color]` | Set color (green, red, blue, white, yellow, cyan, magenta) |
| `-r` | Rainbow mode |

### Examples

```bash
# Normal
khmatrix

# Bold + async
khmatrix -ab

# Rainbow mode
khmatrix -r

# Slow speed
khmatrix -u 8

# Blue color
khmatrix -C blue
```

### Controls

| Key | Action |
|-----|--------|
| `q` | Quit |
| `0-9` | Change speed |

## Font

For best display, install a Khmer font:

```bash
# macOS
brew install --cask font-noto-sans-khmer
```

## License

GPL-3.0 License (same as cmatrix)

## Credits

- Fork of [cmatrix](https://github.com/abishekvashok/cmatrix) by Chris Allegretta & Abishek V Ashok
