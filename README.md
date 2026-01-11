# khmatrix

Matrix rain effect with Khmer characters - just like cmatrix!

![Khmer Matrix](https://img.shields.io/badge/language-Khmer-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Python](https://img.shields.io/badge/python-3.6+-yellow)

## Features

- Authentic falling rain animation like cmatrix
- Khmer Unicode characters (ក ខ គ ង ច ...)
- White leading character with green trail
- Variable speed raindrops
- Smooth performance

## Requirements

- macOS / Linux
- Python 3.6+
- Terminal with UTF-8 support
- Khmer font (Noto Sans Khmer recommended)

## Installation

### Quick Install

```bash
curl -sSL https://raw.githubusercontent.com/RithyTep/khmatrix/main/install.sh | bash
```

### Manual Install

```bash
git clone https://github.com/RithyTep/khmatrix.git
cd khmatrix
chmod +x khmatrix
cp khmatrix ~/.local/bin/
```

## Usage

```bash
khmatrix
```

### Options

| Flag | Description |
|------|-------------|
| `-s` | Speed 0-100 (default: 85) |
| `-h` | Show help |

### Examples

```bash
# Normal speed
khmatrix

# Slow
khmatrix -s 50

# Fast
khmatrix -s 95
```

### Controls

| Key | Action |
|-----|--------|
| `q` | Quit |
| `Space` | Quit |
| `ESC` | Quit |

## Font

For best display, use a Khmer font:

```bash
# macOS
brew install --cask font-noto-sans-khmer
```

## License

MIT License

## Credits

Inspired by [cmatrix](https://github.com/abishekvashok/cmatrix)
