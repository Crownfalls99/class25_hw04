#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <assert.h>
#include <sys/types.h>
#include <sys/stat.h>

int main(int argc, char* argv[]) {
	assert(argc == 2);

	const char* path = argv[1];
	struct stat buf;

	int rc = stat(path, &buf);
	assert(rc == 0);
	
	printf("file size: %ld\nblock num: %ld\nlink count: %ld\n", 
			buf.st_size, 
			buf.st_blocks,
			buf.st_nlink
		);

	return 0;
}
