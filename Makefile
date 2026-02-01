CC = gcc
CFLAGS = -Wall -Wextra -g -std=c11
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
m -f $(SRCDIR)/*.o
m -f $(TARGET)

run: all
	./$(TARGET) sample/access.log
