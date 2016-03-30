import std.stdio;
import std.algorithm;

void main() {
    uint n, m; readf("%s %s\n", &n, &m);
    uint[][] scoreTable = loadScoreTable(n, m);

    uint maxScore = 0;
    uint[] a; foreach (i; 0..n) a ~= i;
    do {
        maxScore = max( maxScore, score(a, scoreTable) );
    } while (nextPermutation(a));

    writeln(maxScore);
}

uint[][] loadScoreTable(uint n, uint m) {
    uint[][] table = new uint[][](n, n);

    foreach (_; 0..m) {
        uint i, j, s;
        readf("%s %s %s\n", &i, &j, &s);
        table[i][j] = s;
    }
    return table;
}

uint score(uint[] a, uint[][] scoreTable) {
    uint s = 0;

    foreach (j, aj; a) {
        foreach (_, ai; a[0..j]) {
            s += scoreTable[ai][aj];
        }
    }
    return s;
}
