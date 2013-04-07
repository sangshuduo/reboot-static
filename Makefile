
CC=gcc
CFLAGS=-Wall
LDFLAGS=-static

OBJECTS=reboot_static.o
SOURCES=reboot_static.c

reboot_static: $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $@ $(LDFLAGS)

.PHONY:	clean

clean:
	-rm -f reboot_static *.o *~

