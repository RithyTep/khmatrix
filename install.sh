#!/bin/bash
# khmatrix installer - builds from source

set -e

echo "Installing khmatrix (Khmer cmatrix)..."

# Check dependencies
if ! command -v gcc &> /dev/null; then
  echo "Error: gcc is required. Install Xcode Command Line Tools:"
  echo "  xcode-select --install"
  exit 1
fi

# Clone and build
TMPDIR=$(mktemp -d)
cd "$TMPDIR"

echo "Cloning repository..."
git clone --depth 1 https://github.com/RithyTep/khmatrix.git
cd khmatrix/cmatrix-src

echo "Building..."
autoreconf -i
./configure
make

# Install
INSTALL_DIR="$HOME/.local/bin"
mkdir -p "$INSTALL_DIR"

cp cmatrix "$INSTALL_DIR/khmatrix-bin"
cat > "$INSTALL_DIR/khmatrix" << 'EOF'
#!/bin/bash
exec "$HOME/.local/bin/khmatrix-bin" -K "$@"
EOF
chmod +x "$INSTALL_DIR/khmatrix" "$INSTALL_DIR/khmatrix-bin"

# Cleanup
cd /
rm -rf "$TMPDIR"

# Add to PATH if needed
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
  SHELL_RC="$HOME/.bashrc"
  [[ "$SHELL" == *"zsh"* ]] && SHELL_RC="$HOME/.zshrc"
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$SHELL_RC"
  echo "Added $INSTALL_DIR to PATH"
fi

echo ""
echo "Installation complete!"
echo "Run 'khmatrix' (restart terminal if needed)"
