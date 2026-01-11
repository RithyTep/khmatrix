# khmatrix

Matrix rain effect with Khmer characters for your terminal.

![Khmer Matrix](https://img.shields.io/badge/language-Khmer-blue)
![License](https://img.shields.io/badge/license-MIT-green)

## Preview

```
គ If you have Khmer font installed, you'll see this:
ក   ខ     គ
  ង   ច     ឆ   ជ
១   ២   ៣     ៤
  រ     ល   វ     ស
```

## Requirements

- macOS / Linux
- Terminal with UTF-8 support
- Khmer font (Noto Sans Khmer recommended)
- Python 3.6+

## Installation

### Quick Install (macOS/Linux)

```bash
curl -sSL https://raw.githubusercontent.com/YOUR_USERNAME/khmatrix/main/install.sh | bash
```

### Manual Install

```bash
# Install unimatrix
pipx install git+https://github.com/will8211/unimatrix.git

# Clone and install khmatrix
git clone https://github.com/YOUR_USERNAME/khmatrix.git
cd khmatrix
chmod +x khmatrix
sudo cp khmatrix /usr/local/bin/
```

## Usage

```bash
khmatrix
```

### Options

| Flag | Description |
|------|-------------|
| `-s` | Speed 0-100 (default: 96) |
| `-h` | Show help |

### Examples

```bash
# Normal speed
khmatrix

# Slow and relaxing
khmatrix -s 50

# Maximum speed
khmatrix -s 100
```

### Keyboard Controls

| Key | Action |
|-----|--------|
| `q` or `Space` | Quit |
| `+` or `→` | Speed up |
| `-` or `←` | Slow down |

## Font Recommendations

For best display, install a Khmer-supporting font:

- **Noto Sans Khmer** - `brew install font-noto-sans-khmer`
- **Khmer OS** - Available at [khmeros.info](http://khmeros.info)

## License

MIT License - See [LICENSE](LICENSE)

## Credits

- Built on top of [unimatrix](https://github.com/will8211/unimatrix)
- Inspired by [cmatrix](https://github.com/abishekvashok/cmatrix)

## Contributing

Contributions welcome! Feel free to open issues or pull requests.
