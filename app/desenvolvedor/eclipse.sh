#!/bin/bash

ECLIPSE_URL="${ECLIPSE_URL:-http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/neon/2/eclipse-jee-neon-2-linux-gtk-x86_64.tar.gz}"
ECLIPSE_PATH="${ECLIPSE_PATH:-/opt}"

wget "$ECLIPSE_URL" -O - | sudo tar xvzf - -C "$ECLIPSE_PATH"

cat <<EOF | sudo tee /usr/share/applications/eclipse.desktop
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Name=Eclipse
Exec=$ECLIPSE_PATH/eclipse/eclipse
Icon=$ECLIPSE_PATH/eclipse/icon.xpm
Categories=Application;Development;Java;IDE
EOF

sudo chmod 644 /usr/share/applications/eclipse.desktop
