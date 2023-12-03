CC = gcc
CFLAGS = -Wall -O -g -Iui -Isystem -Iweb_server

PROGRAM = bin/toy_system

OBJFILES = main.o gui.o input.o web_server.o system_server.o

all: $(PROGRAM)

$(PROGRAM): $(OBJFILES)
	$(CC) $(CFLAGS) -o $@ $^

main.o: main.c
	$(CC) $(CFLAGS) -c $<

gui.o: ui/gui.c
	$(CC) $(CFLAGS) -c $<

input.o: ui/input.c
	$(CC) $(CFLAGS) -c $<

web_server.o: web_server/web_server.c
	$(CC) $(CFLAGS) -c $<

system_server.o: system/system_server.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f $(OBJFILES) $(PROGRAM)