CC = gcc

CFLAGS = -c
LDFLAGS = 

LIBS = 

OBJS = main.o

%.o: %.c
	$(CC) $(CFLAGS) -o $@ $<

CAT: $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

all: CAT

install: CAT
	cp CAT /bin/CAT

