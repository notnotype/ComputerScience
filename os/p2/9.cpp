
#include <errno.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ipc.h>
#include <sys/sem.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#define DELAY (rand() % 5 + 1) / 10000
// #define DELAY 0
int get(int no, int semid);
void put(int no, int semid);
void sit(int no, int semid);

union semun {
    int val;
    struct semid_ds* buf;
    unsigned short* array;
};

int main() {
    int semid;
    //所创建或打开信号量集的键值，信号量的个数，信号量集的访问权限。实现内存共享
    semid = semget(IPC_PRIVATE, 5, IPC_CREAT | 0666);
    if (semid < 0)
        exit(EXIT_FAILURE);
    union semun su;
    su.val = 1;
    int i;
    for (i = 0; i < 5; i++)
        semctl(semid, i, SETVAL, su);
    // semctl()的第一个参数是信号量集IPC标识符。第二个参数是操作信号在信号集中的编号，第一个信号的编号是0。
    int num = 0;  //从0开始，开启0~4的五个进程
    pid_t pid;
    for (i = 1; i < 5; i++) {
        pid = fork();
        if (pid < 0)
            exit(EXIT_FAILURE);
        if (pid == 0) {
            num = i;
            break;
        }
    }
    sit(num, semid);
    return 0;
}

int get(int no, int semid)  //等待叉子空闲
{
    struct sembuf left = {no, -1, 0};             //左叉子
    struct sembuf right = {(no + 1) % 5, -1, 0};  //右叉子
    int lc, rc;
    // semop 信号量的值与相应资源的使用情况有关
    lc = semop(semid, &left, 1);   //左叉子是否空闲
    rc = semop(semid, &right, 1);  //右叉子是否空闲
    printf("哲学家%d 拿叉子\n", no);
    if (lc != -1 && rc != -1)  //如果两支叉子都空闲
        return 1;
    printf("哲学家%d 放下叉子\n", no);
    struct sembuf putl = {no, 1, 0};            //左叉子
    struct sembuf putr = {(no + 1) % 5, 1, 0};  //右叉子
    //到这步，如果前面的条件不满足，
    
    //意味着有叉子不是空闲，那么需要把已经拿起的叉子放下
    if (lc == -1)                //若拿起了左叉子
        semop(semid, &putl, 1);  //放下
    if (rc == -1)                //若拿起了右叉子
        semop(semid, &putr, 1);  //放下
    return 0;
}
void put(int no, int semid)  //放下叉子
{
    struct sembuf putl = {no, 1, 0};            //左叉子
    struct sembuf putr = {(no + 1) % 5, 1, 0};  //右叉子
    semop(semid, &putl, 1);                     //放下左叉子
    semop(semid, &putr, 1);                     //放下右叉子
}

void sit(int no, int semid) {
    srand(getpid());
    printf("哲学家%d is thinking\n", no);
    sleep(DELAY);
    printf("哲学家%d is hungry\n", no);
    while (get(no, semid) == 0)
        ;
    //如果一直没有拿到两支筷子，则会一直处于饥饿状态，即无法跳出此循环
    printf("哲学家%d is eating\n", no);
    sleep(DELAY);
    put(no, semid);
}
