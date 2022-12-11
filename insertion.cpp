#include <iostream>
#include <vector>

using namespace std;

void insertionSort(vector<int>& ar) {
    for (int j = 1; j < ar.size(); ++j) {
        int key = ar[j];
        int i = j - 1;
        while (i >= 0 and ar[i] > key) {
            ar[i + 1] = ar[i];
            --i;
        }
        ar[i + 1] = key;
    }
}


int main () {
    int n;
    cin >> n;
    vector<int> ar(n);
    for (int i = 0; i < n; ++i) cin >> ar[i];
    insertionSort(ar);
}
