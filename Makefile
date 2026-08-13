.PHONY: link, unlink, help

link:
	@echo "🔗 Linking 'setup' to $(HOME)/.config/ghostty..."
	@mkdir -p ~/.config/ghostty
	@stow --adopt -t ~/.config/ghostty -S .

unlink:
	@echo "❌ Unlinking 'setup' from $(HOME)/.config/ghostty..."
	@stow -D -t ~/.config/ghostty .

help:
	@echo "📦 Usage:"
	@echo "  make link    - Symlink 'setup' to ~/.config/ghostty using stow"
	@echo "  make unlink  - Remove symlink from ~/.config/ghostty using stow --delete"
