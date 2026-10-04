#!/bin/bash
# Install Omatutor: a command on your PATH plus an entry in the app launcher (Super + Space).
set -euo pipefail

here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
mkdir -p ~/.local/bin ~/.local/share/applications
ln -sf "$here/omatutor" ~/.local/bin/omatutor
rm -f ~/.local/bin/omarchy-tutor ~/.local/share/applications/omarchy-tutor.desktop  # pre-rename leftovers

cat >~/.local/share/applications/omatutor.desktop <<DESKTOP
[Desktop Entry]
Type=Application
Name=Omatutor
Comment=Drill your Omarchy keybindings
Exec=$HOME/.local/bin/omatutor
Icon=input-keyboard
Terminal=false
Categories=Education;Utility;
DESKTOP

echo "Installed. Run 'omatutor' or search 'Omatutor' in the app launcher."
