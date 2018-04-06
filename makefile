make_readme:
	touch readme.md
	echo "# GUESSING GAME" > readme.md
	echo "### Makefile last run : `date +'%m/%d/%y %H:%M:%S'` ">> readme.md
	echo "### Number of lines:`less guessinggame.sh | wc -l` ">> readme.md