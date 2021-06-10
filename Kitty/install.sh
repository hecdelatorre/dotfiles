DIRECTORY=~/.config/kitty
if [ -d $DIRECTORY ]
then
	echo -e "Remove kitty"
	rm -vr $DIRECTORY
	mkdir $DIRECTORY
	echo -e "Copying kitty.conf"
	cp -v Themes/Gruvbox/kitty.conf $DIRECTORY
else
	echo -e "Creating kitty folder"
	mkdir $DIRECTORY
	echo -e "Copying kitty.conf"
	cp -v Themes/Gruvbox/kitty.conf $DIRECTORY
fi
