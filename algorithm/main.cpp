#include<bits/stdc++.h>

using namespace std;

int buffer[1004] = {};

// [l, r)
void quick_sort(int arr[], int l, int r) {
    if (r - l <= 1) return;
    int ll = l, rr = r - 1;
    int mid = arr[(ll + rr) / 2];
    while (rr >= ll) {
        while (arr[ll] < mid) ll++;
        while (arr[rr] > mid) rr--;
        if (ll <= rr) swap(arr[rr--], arr[ll++]);
    }
    quick_sort(arr, l, rr + 1);
    quick_sort(arr, ll, r);
}

int main(int argc, char const* argv[]) {
    int arr[10] = {5, 6, 7, 3, 8, 1, 2, 9, 1, 10};
    quick_sort(arr, 0, 10);
    // int arr1[5] = {1, 3, 5, 7, 9};
    // int arr2[5] = {2, 3, 4, 7, 8};
    for (int i=0; i<10; i++) {
        cout << arr[i] << ", ";
    }
    cout << endl;
    return 0;
}