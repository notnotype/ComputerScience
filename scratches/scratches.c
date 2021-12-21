#include <stdio.h>

void f(int arr[]) {
    arr[0] = 2;
}
void fb(char* arr[]) {
	// arr[0][0] = 'c';
	printf("%s\n", &arr[0]);
}

int main(int argc, char const* argv[]) {
    int a[5] = {0, 0, 0, 0, 0};
    f(a);
    for (int i = 0; i < 5; i++) {
        printf("a[%d] = %d\n", i, a[i]);
    }

    char b[5][16] = {"", "safdasfdsaf", "", "", ""};
	b[0][0] = '1';

	char d = b[1];
	printf("d = %d", b[0]);

    fb(b);
    for (int i = 0; i < 5; i++) {
        printf("b[%d] = %s\n", i, b[i]);
    }
    return 0;
}
