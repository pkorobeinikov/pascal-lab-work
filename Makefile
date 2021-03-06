# Environment

TEST=          test
MKDIR=         mkdir
CC=            fpc

BIN_DIR=       ./bin/
BOOKS_DIR=     ./bin/books/
SRC_DIR=       ./src/


# Targets

compile:
	$(TEST) -d $(BIN_DIR) || $(MKDIR) $(BIN_DIR)
	$(TEST) -d $(BOOKS_DIR) || $(MKDIR) $(BOOKS_DIR)
	$(CC) -o$(BIN_DIR)AddressBook $(SRC_DIR)AddressBook.pas

clean:
	find -name '*.bak' -delete
	find -name '*.o' -delete
	find -name '*.dia~' -delete

