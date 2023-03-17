#include<bits/stdc++.h>

using namespace std;

int arr[10] = {1, 7, 8, 12, 5, 7, 8, 2, 9, 4};
int buffer[1004] = {};

// [a, ae) [b, be)
void my_merge(int* a, int* ae, int* b, int* be, int* c) {
    int i = 0;
    while (a < ae && b < be) {
        if (*a <= *b) {
            *c++ = *a++;
        } else {
            *c++ = *b++;
        }
    }
    while (a < ae) *c++ = *a++;
    while (b < be) *c++ = *b++;
}

void merge_sort(int* arr, int l, int r) {
    if (r - l <= 1) return;
    int mid = l + ((r - l) >> 1);  // [0, 5) [5, 10)
    merge_sort(arr, l, mid);
    merge_sort(arr, mid, r);
    
    // [0 4] [5, 9] 10 - 5 + 5
    my_merge(arr + l, arr + mid, arr + mid, arr + r, buffer + l);
    for (int i = l; i < r; i++) arr[i] = buffer[i];
}

int main(int argc, char const *argv[])
{
    
    merge_sort(arr, 0, 10);
    for (int i=0; i<10; i++) {
        cout << arr[i] << ", ";
    }
    cout << endl;
    return 0;
}
