FONTS_DIR="$HOME/.local/share/fonts"

wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip" && \
mkdir -p $FONTS_DIR && \
mv JetBrainsMono.zip $FONTS_DIR && \
cd $FONTS_DIR && \
unzip JetBrainsMono.zip && \
fc-cache -fv && \
rm JetBrainsMono.zip;

cd $CUR_DIR;
