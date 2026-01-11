#!/bin/bash
# khmatrix installer

set -e

echo "Installing khmatrix..."

# Check for pipx
if ! command -v pipx &> /dev/null; then
  echo "Installing pipx..."
  if command -v brew &> /dev/null; then
    brew install pipx
  elif command -v apt &> /dev/null; then
    sudo apt install -y pipx
  else
    echo "Please install pipx first: https://pipx.pypa.io/stable/installation/"
    exit 1
  fi
fi

# Install unimatrix
echo "Installing unimatrix..."
pipx install git+https://github.com/will8211/unimatrix.git 2>/dev/null || true

# Install khmatrix
echo "Installing khmatrix..."
INSTALL_DIR="$HOME/.local/bin"
mkdir -p "$INSTALL_DIR"

curl -sSL https://raw.githubusercontent.com/YOUR_USERNAME/khmatrix/main/khmatrix -o "$INSTALL_DIR/khmatrix"
chmod +x "$INSTALL_DIR/khmatrix"

# Add to PATH if needed
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
  SHELL_RC="$HOME/.bashrc"
  [[ "$SHELL" == *"zsh"* ]] && SHELL_RC="$HOME/.zshrc"
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$SHELL_RC"
  echo "Added $INSTALL_DIR to PATH in $SHELL_RC"
fi

echo ""
echo "Installation complete!"
echo "Run 'khmatrix' to start (you may need to restart your terminal)"
