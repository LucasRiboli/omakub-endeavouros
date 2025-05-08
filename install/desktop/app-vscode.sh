if ! command -v code &> /dev/null; then
    echo "Visual Studio Code não encontrado. Instalando..."
    yay -S --needed visual-studio-code-bin --noconfirm
else
    echo "Visual Studio Code já está instalado. Pulando a instalação."
fi

mkdir -p ~/.config/Code/User
cp ~/.local/share/omakub/configs/vscode.json ~/.config/Code/User/settings.json

if ! code --list-extensions | grep -q "enkia.tokyo-night"; then
    code --install-extension enkia.tokyo-night
else
    echo "Tema 'enkia.tokyo-night' já está instalado."
fi
