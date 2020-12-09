#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <assert.h>
#include <sys/types.h>
#include <sys/stat.h>

void Stat(const char* path, struct stat* st) {
	int rc = stat(path, st);
	assert(rc == 0);
}

void Read(int fd, char* buf, size_t cnt) {
	ssize_t rc = read(fd, buf, cnt);
	assert(rc >= 0 && (size_t)rc == cnt);
}

int main(int argc, char* argv[]) {
	assert(argc == 3);
	
	int l = (-1) * atoi(argv[1]);
	const char* path = argv[2];
	assert(l > 0);

	struct stat st;
	Stat(path, &st);

	if (st.st_size <= 0 ) exit(0);
	
	int fd = open(path, O_RDONLY);
	assert(fd != -1);

	char buf[st.st_size];
	Read(fd, buf, st.st_size);
	buf[st.st_size - 1] = '\0';

	int offset = st.st_size, fl = 0;
	char* ptr;

	while (1) {
		offset--;
		if ( offset < 0 ) {
			ptr = buf;
			break;
		}
		if (buf[offset] == '\n') {
			ptr = buf + offset + 1;
			if (++fl == l)
				break;
		}
	}
	printf("%s\n", ptr);
	return 0;
}
