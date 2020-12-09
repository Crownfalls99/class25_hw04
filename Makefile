all: stat tail

stat: stat.c
	gcc -o stat stat.c

tail: tail.c
	gcc -o tail tail.c

clean:
	rm -f stat tail

