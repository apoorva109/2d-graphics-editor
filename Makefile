CC = gcc
CFLAGS = -Wall -Wextra -std=c99

.PHONY: all clean help editor editor_ncurses

all: editor editor_ncurses

editor: graphics_editor.c
	$(CC) $(CFLAGS) graphics_editor.c -o editor

editor_ncurses: graphics_editor.c
	$(CC) $(CFLAGS) -DUSE_NCURSES graphics_editor.c -o editor_ncurses -lncurses

clean:
	rm -f editor editor_ncurses

help:
	@echo "Available build targets:"
	@echo "  make editor          - Build the standard CLI Graphics Editor"
	@echo "  make editor_ncurses  - Build the visual interactive ncurses Graphics Editor"
	@echo "  make all             - Build both targets"
	@echo "  make clean           - Remove binary executables"
