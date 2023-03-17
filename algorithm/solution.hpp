#include<bits/stdc++.h>

using namespace std;

template <class T>
struct ListNode {
    T val;
    ListNode *next;
    ListNode() : val(0), next(nullptr) {}
    ListNode(T x) : val(x), next(nullptr) {}
    ListNode(T x, ListNode *next) : val(x), next(next) {}
    
    static ListNode* from_vec(vector<T> arr) {
        ListNode *node, *origin ;
        node = origin = new ListNode(0, nullptr);

        for (auto each: arr) {
            node->next = new ListNode(each, nullptr);
            node = node->next;
        }
        return origin->next;
    }
    
    static void show(ListNode* node) {
        while (node) {
            cout << node->val << ", ";
            node = node->next;
        }
        cout << endl;
    }
};

template <class T>
void pvec(const vector<T>& v) {
    for (auto t: v) {
        cout << t << ", " << endl;
    }
}

template <class T>
void pvec2d(const vector<vector<T>>& v) {
    for (auto m: v) {
        for (auto n: m) {
            cout << n << ", " << endl;
        }
        cout << endl;
    }
}

