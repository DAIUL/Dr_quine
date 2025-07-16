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

kclean:
	@rm -f Grace_kid.c

sclean:
	@rm -f Sully_4.c Sully_4 Sully_3.c Sully_3 Sully_2.c Sully_2 Sully_1.c Sully_1 Sully_0.c Sully_0

re: fclean all

# *************** PHONY ***************
.PHONY: all clean fclean re