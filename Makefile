CC = gcc
CFLAGS = -Wall -Wextra -g -std=c99
SRCDIR = src
BINDIR = bin
TARGET = $(BINDIR)/loganalyzer

SRCS = $(SRCDIR)/main.c $(SRCDIR)/parser.c $(SRCDIR)/stats.c $(SRCDIR)/hashmap.c
OBJS = $(SRCS:.c=.o)

.PHONY: all clean

all: $(BINDIR) $(TARGET)

$(BINDIR):
	mkdir -p $(BINDIR)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

$(SRCDIR)/%.o: $(SRCDIR)/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(SRCDIR)/*.o
	rm -f $(TARGET)

run: all
	./$(TARGET) sample/access.log