#include <iostream>
#include <vector>
#include <random>
#include <chrono>
#include <algorithm>
#include <map>

using namespace std;
const int N = 10000;

mt19937 rng(chrono::steady_clock::now().time_since_epoch().count());

int main () {
    //int n = rng()%N + 1; //Fijar para hacerlo segun ordered_numbers
    int n = 10000;
    vector<int> ar(n);
    for (int i = 0; i < n; ++i) ar[i] = rng();

    vector<int> ordered = ar;
    sort(ordered.begin(), ordered.end());
    int ordered_numbers = (rng()%n) + (n%2); //Fijar para hacerlo segun n
    int positions = 0;
    vector<bool> vis(n);
    map<int, bool> used;
    while (positions < ordered_numbers) {
        int index  = rng()%n;
        if (not vis[index]) {
            vis[index] = true;
            used[ordered[index]] = true;
            ++positions;
        }
    }

    int i = 0;
    int j = 0;
    while (i < n) {
        if (not vis[i]) {
            while (j < n and used.count(ar[j])) ++j;
            ordered[i] = ar[j];
        }
        ++i;
    }

    cout << n;
    for (int x : ordered) cout << ' ' << x;
    cout << '\n';
}
