#include "list.h"

extern "C" List<int> test(int m, List<int> a, List<int> rowstr, List<int> colidx, List<int> z) {
    List<int> r = newList<int>();
    for (int j = 0; j < m; j++) {
        int d = 0;
        for (int k = listGet(rowstr, j); k < listGet(rowstr, j + 1); k++) {
            d += listGet(a, k) * listGet(z, listGet(colidx, k));
        }
        r = listAppend(r, d);
    }
    return r;
}
