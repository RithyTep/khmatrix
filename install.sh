#!/bin/bash
# khmatrix installer

set -e

echo "Installing khmatrix..."

# Check Python
if ! command -v python3 &> /dev/null; then
  echo "Error: Python 3 is required"
  exit 1
fi

# Install khmatrix
INSTALL_DIR="$HOME/.local/bin"
mkdir -p "$INSTALL_DIR"

curl -sSL https://raw.githubusercontent.com/RithyTep/khmatrix/main/khmatrix -o "$INSTALL_DIR/khmatrix"
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
