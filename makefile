# makefile for coursera project

all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game " > README.md 
	echo "## Today's Date: $(shell date)" >> README.md
	echo "The number of lines in the Guessing game is $(shell wc -l < guessinggame.sh) " >> README.md

clean:
	rm README.md
