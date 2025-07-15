# *************** VARIABLES ***************
SRC = $(wildcard *.c)
EXE = $(basename $(SRC))

CC = gcc
CFLAGS = -Wall -Wextra -Werror

# *************** RULES ***************
all: $(EXE)

%: %.c
	@$(CC) $(CFLAGS) -o $@ $<

clean:
	@echo "Nothing to clean (no .o files)"

fclean:
	@rm -f $(EXE)

re: fclean all

# *************** PHONY ***************
.PHONY: all clean fclean re