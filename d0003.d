import std.stdio;
import core.bitop;

int[] numMoves;

void main() {
    uint n;
    readf("%s\n", &n);

    numMoves.length = n;
    numMoves[0] = 1;
    foreach (i; 1..n) {
        moveFrom(i, n);
    }
    writeln(numMoves[n-1] ? numMoves[n-1] : -1);
}

void moveFrom(uint i, uint n) {
    if (!numMoves[i-1]) { return; }

    foreach(k; [ (i + i.popcnt), (i - i.popcnt) ]) {
        if (k < 1 || n < k) { continue; }

        int nm = numMoves[i-1] + 1;
        if (numMoves[k-1] && (numMoves[k-1] <= nm)) { continue; }

        numMoves[k-1] = nm;
        moveFrom(k, n);
    }
}
