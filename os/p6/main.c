#include <stdio.h>
#include <stdlib.h>

#define N 4  // 进程数目
#define R 4  // 资源种类

int allocation[N][R] = {
    {0, 0, 1, 4},
    {1, 4, 3, 2},
    {1, 3, 5, 4},
    {1, 0, 0, 0},
};
int need[N][R] = {
    {0, 0, 0, 0},  // 0, 6, 6, 6
    {0, 0, 0, 0},  // 1, 9, 4, 2
    {0, 0, 0, 0},  // 1, 3, 5, 6
    {0, 0, 0, 0},  // 1, 7, 5, 0
};
int finish[N] = {0, 0, 0, 0};
int available[R] = {1, 5, 2, 0};

static int sema = 0;  // no process occupied

int dim_le(int a[R], int b[R]) {
    for (int i = 0; i < R; i++) {
        if (a[i] > b[i])
            return 0;
    }
    return 1;
}
void dim_add(int a[R], int b[R]) {
    for (int i = 0; i < R; i++) {
        a[i] += b[i];
    }
}
void dim_sub(int a[R], int b[R]) {
    for (int i = 0; i < R; i++) {
        a[i] -= b[i];
    }
}

void calc_need() {
    for (int i = 0; i < R; i++) {
        dim_sub(need[i], allocation[i]);
    }
}

void show() {
    printf("    Allocation      Need     Available    Finish\n");
    for (int i = 0; i < 3; i++) {
        printf("   ");
        for (int j = 0; j < R; j++) {
            printf("%c ", 'A' + j);
        }
    }
    printf("\n");
    for (int i = 0; i < N; i++) {
        printf("P%d ", i + 1);
        for (int j = 0; j < R; j++) {
            printf("%d ", allocation[i][j]);
        }
        printf("   ");
        for (int j = 0; j < R; j++) {
            printf("%d ", need[i][j]);
        }
        printf("   ");
        if (i == 0) {
            for (int j = 0; j < R; j++) {
                printf("%d ", available[j]);
            }
            printf("   ");
            for (int j = 0; j < R; j++) {
                printf("%d ", finish[j]);
            }
        }
        printf("\n");
    }
    printf("\n");
}

void p(int* semaphore) {
    while (*semaphore == 0) {
        ;
    }
    *semaphore = 1;
}
void v(int* semaphore) {
    *semaphore = 0;
}

int banker_algorithm() {
    printf("initialnal state\n");
    show();
    for (int i = 0; i < R; i++) {
        int found = 0;
        for (int j = 0; j < R; j++) {
            printf("i: %d, j: %d, compare: %d\n", i, j,
                   dim_le(need[j], available));
            if (dim_le(need[j], available) && !finish[j]) {
                finish[j] = 1;
                found = 1;
                // 分配
                dim_add(allocation[j], need[j]);
                dim_sub(available, need[j]);

                // 回收
                dim_sub(need[j], need[j]);
                // show();
                dim_add(available, allocation[j]);
                show();
                break;
            }
        }
        if (!found) {
            printf("Unsafe!");
            return 0;
        }
    }
    printf("Safe!");
    return 1;
}

int main(int argc, char const* argv[]) {
    for (int i = 0; i < N; i++) {
        printf("input process %d need matrix:\n", i);
        for (int j = 0; j < R; j++) {
            scanf("%d", &need[i][j]);
        }
        printf("\n");
    }
    calc_need();
    banker_algorithm();
    return 0;
}
