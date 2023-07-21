# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -Wextra -I.

# Source files
SRC_FILES = main.c functions.c

# Object files
OBJ_FILES = $(SRC_FILES:.c=.o)

# Output executable
OUTPUT = my_app

# Default target
all: $(OUTPUT)

# Rule to create the executable
$(OUTPUT): $(OBJ_FILES)
    $(CC) $(CFLAGS) $(OBJ_FILES) -o $(OUTPUT)

# Rule to compile source files into object files
%.o: %.c
    $(CC) $(CFLAGS) -c $< -o $@

# Clean up object files and the executable
clean:
    rm -f $(OBJ_FILES) $(OUTPUT)
