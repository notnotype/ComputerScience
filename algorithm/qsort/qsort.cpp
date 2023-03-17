#include <bits/stdc++.h>

using namespace std;

// [l, r]
void quick_sort(int arr[], int l, int r) {
    if (l >= r) return;
    int ll = l, rr = r;
    int mid = arr[r];
    while (l <= r) {
        while (arr[l] < mid) l++;
        while (arr[r] > mid) r--;
        if(l <= r)
        {
            swap(arr[l],arr[r]);
            l++;
            r--;
        }
    }
    quick_sort(arr, ll, r);
    quick_sort(arr, l, rr);
}

int main(int argc, char const* argv[]) {
    int arr[10] = {5, 6, 7, 3, 8, 1, 2, 9, 1, 10};
    quick_sort(arr, 0, 9);
    for (int i=0; i<10; i++) {
        cout << arr[i] << ", ";
    }
    cout << endl;
    return 0;
}
