#include <stdio.h>



// 2^4 = 16
int main(void) {
	int i = 1;
	for (int j=0; j<4; j++) {
		i = 2 * i;
	}
	printf("%d\n", i);
	return 0;
}
