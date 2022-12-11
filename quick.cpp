#include <iostream>
#include <vector>

using namespace std;

int partition(vector<int>& ar, int p, int r) {
    int x = ar[r];
    int i = p - 1;
    for (int j = p; j < r; ++j) {
        if (ar[j] <= x) {
            ++i;
            swap(ar[i], ar[j]);
        }
    }
    swap(ar[i + 1], ar[r]);
    return i + 1;
}

void quickSort(vector<int>& ar, int p, int r) {
    if (p < r) {
        int q = partition(ar, p, r);
        quickSort(ar, p, q - 1);
        quickSort(ar, q + 1, r);
    }
}


int main () {
    int n;
    cin >> n;
    vector<int> ar(n);
    for (int i = 0; i < n; ++i) cin >> ar[i];
    quickSort(ar, 0, ar.size() - 1);
}
