#include <stdio.h>
#include <stdlib.h>
#include <sys/ipc.h>
#include <sys/sem.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>
#include <iostream>

using namespace std;

#define N 5
#define DELAY (rand() % 5 + 1)

int sem_p(int semid, int index) {
    struct sembuf buf = {index, -1, SEM_UNDO};
    int r;
    if ((r = semop(semid, &buf, 1)) == -1) {
        cout << "error_code is " << errno << endl;
        perror("p a wrong operation to semaphore occurred!");
        return -1;
    }
    return 0;
}

int sem_v(int semid, int index) {
    struct sembuf buf = {index, 1, SEM_UNDO};
    int r;
    if ((r = semop(semid, &buf, 1)) == -1) {
        cout << "error_code is " << errno << endl;
        perror("v a wrong operation to semaphore occurred!");
        return -1;
    }
    return 0;
}

int main(int argc, char const* argv[]) {
    pid_t pid;
    int fd;
    key_t key = 0;
    int sid;

    if ((sid = semget(key, 5, IPC_CREAT | 0666)) == -1) {
        perror("createSemset error");
        exit(-1);
    }

    for (int i = 0; i < N; i++) {
        if (semctl(sid, i, SETVAL, 1) == -1) {
            perror("SETVAL error");
            exit(1);
        }
    }

    for (int i = 0; i < N; i++) {
        if ((pid = fork()) == 0) {
            srand((unsigned int)time(NULL) + i);
            while (1) {
                cout << "哲学家[" << i << "] is thinking" << endl;
                sleep(DELAY);
                cout << "哲学家[" << i << "] is hungery" << endl;
                int a = sem_p(sid, i);
                if (a != -1) {
                    cout << "哲学家[" << i << "] 拿起了叉子[" << i << "]"
                         << endl;
                } else {
                    continue;
                }

                int b = sem_p(sid, (i + 1) % N);
                if (b != -1) {
                    cout << "哲学家[" << i << "] 拿起了叉子[" << (i + 1) % N
                         << "]" << endl;
                } else {
                    cout << "哲学家[" << i << "] 放下了了叉子[" << i << "]"
                         << endl;
                    sem_v(sid, i);
                    continue;
                }

                cout << "哲学家[" << i << "] 开始干饭" << endl;
                sem_v(sid, i);
                sem_v(sid, (i + 1) % N);
                cout << "哲学家[" << i << "] 干完饭并且放下叉子了" << endl;
                break;
            }
            return 0;
            // break;
        } else if (pid == -1) {
            cerr << "fork child [" << i << "] error " << endl;
            exit(1);
        }
    }
    return 0;
}
