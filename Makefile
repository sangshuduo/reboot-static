
CC=gcc
CFLAGS=-static

reboot_static: reboot_static.o
	$(CC) $(CFLAGS) reboot_static.o -o $@

reboot_static.o: reboot_static.c
	$(CC) -c reboot_static.c -o $@

.PHONY:	clean

clean:
	-rm -f reboot_static *.o

