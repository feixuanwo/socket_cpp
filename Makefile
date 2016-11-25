CC=g++

EXEC=server client
CPROBJ=ChatClient.o ClientSocket.o Socket.o
RPROBJ=ChatServer.o ServerSocket.o Socket.o

all:$(EXEC)

.c.o:
	@echo "Compiling $< ..."
	$(CC) -c -O2 $<

server:$(RPROBJ)
	@echo "making $@ ..."
	$(CC) -o $@ $^

client:$(CPROBJ)
	@echo "making $@ ..."
	$(CC) -o $@ $^

install:
	make all

clean:
	rm -f $(EXEC) $(CPROBJ) $(RPROBJ)
