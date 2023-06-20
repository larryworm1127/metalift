#include "list.h"

extern "C" List<int> test(List<int> a, List<int> rowstr, List<int> colidx, List<int> z) {
    List<int> r = newList<int>();
    for (int j = 0; j < listLength(z); j++) {
        int d = 0;
        for (int k = listGet(rowstr, j); k < listGet(rowstr, j + 1); k++) {
            d += listGet(a, k) * listGet(z, listGet(colidx, k));
        }
        r = listAppend(r, d);
    }
    return r;
}

int main() {
    List<int> a = newList<int>();
    for (int i = 0; i < 10; i++) {
        a = listAppend(a, i);
    }
    List<int> z = newList<int>();
    for (int i = 0; i < 10; i++) {
        z = listAppend(z, i);
    }
    List<int> rowstr = newList<int>();
    rowstr = listAppend(rowstr, 0);
    rowstr = listAppend(rowstr, 2);
    rowstr = listAppend(rowstr, 4);
    rowstr = listAppend(rowstr, 7);
    rowstr = listAppend(rowstr, 8);
    rowstr = listAppend(rowstr, 10);

    List<int> col_ind = newList<int>();
    for (int i = 0; i < 10; i++) {
        col_ind = listAppend(col_ind, i);
    }

    List<int> o = test(a, rowstr, col_ind, z);
}
