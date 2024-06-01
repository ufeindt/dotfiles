# Add git configuration
git config --global user.name "Ulrich Feindt"
git config --global user.email "ufeindt@gmail.com"

# Dark Mode
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

# Add flathub repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Remove ostree Firefox and isntall flatpak version (+ more browsers)
rpm-ostree override remove firefox firefox-langpacks
flatpak install -y flathub org.mozilla.firefox
flatpak install -y flathub org.gtk.Gtk3theme.Adwaita-dark
flatpak override --user --env=GTK_THEME=Adwaita:dark org.mozilla.firefox
flatpak override --user --env=ADW_DEBUG_COLOR_SCHEME=prefer-dark org.mozilla.firefox
flatpak install -y flathub org.chromium.Chromium
flatpak install -y flathub com.vivaldi.Vivaldi

# Install additional apps
flatpak install -y flathub com.github.tchx84.Flatseal
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub rest.insomnia.Insomnia
flatpak install -y flathub com.logseq.Logseq
flatpak install -y flathub md.obsidian.Obsidian
flatpak install -y flathub com.slack.Slack
flatpak install -y flathub org.flameshot.Flameshot
flatpak install -y flathub org.gimp.GIMP
flatpak install -y flathub org.inkscape.Inkscape
flatpak install -y flathub io.dbeaver.DBeaverCommunity
flatpak install -y flathub com.valvesoftware.Steam
