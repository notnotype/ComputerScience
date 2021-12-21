#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <cstdio>
#include <cstring>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

#define BUF_SIZE 256
#define MAX_ARG 64
#define MAX_ARG_LEN 256
#define C_RED "\033[0;31m"
#define C_GREEN "\033[0;32m"
#define C_YELLOW "\033[1;33m"
#define C_CLR "\033[0m"
#define PROMPT C_YELLOW "# " C_CLR

void argparse(string cmd, vector<string>& argv) {
    int o = 0;
    int p = 0;
    // cout << "cmd is : " << cmd << endl;
    for (; p < cmd.length(); p++) {
        while (cmd[p] != ' ' && cmd[p]) {
            p++;
        };
        argv.push_back(cmd.substr(o, p - o));
        o = p + 1;
    }
}

char* const* convert(const vector<string>& v) {
    char** cc = new char*[v.size()];

    for (unsigned int i = 0; i < v.size(); ++i) {
        cc[i] = new char[v[i].size() + 1];  // make it fit
        strcpy(cc[i], v[i].c_str());        // copy string
    }
    // cc[v.size()] = NULL;

    return cc;
}

int main() {
    string cmd;
    vector<string> argvt;
    string workplace;
    system("clear");
    while (1) {
        cout << PROMPT;
        getline(cin, cmd);
        argvt.clear();
        argparse(cmd, argvt);
        if (argvt[0] == "hi") {
            printf("Hello, World!\n");
        } else if (argvt[0] == "cd") {
            chdir(argvt[1].c_str());
            // cout << C_RED << "pwd is :" << getcwd(NULL, 0) << C_CLR << endl;
        } else if (argvt[0] == "quit" || argvt[0] == "bye" ||
                   argvt[0] == "exit") {
            cout << "bye" << endl;
            exit(0);
        } else {
            // for (int i = 0; i < argvt.size(); i++) {
            //     cout << C_RED << "argvt[" << i << "] = '" << argvt[i] << "'"
            //          << C_CLR << endl;
            // }
            if (fork() == 0) {
                int r = execvp(argvt[0].c_str(), convert(argvt));
                if (r == -1) {
                    cout << argvt[0] << ": command not found" << endl;
                }
                exit(0);
            } else {
                wait(NULL);
            }
        }
    }
    return 0;
}