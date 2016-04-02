import std.stdio;
import std.conv;
import std.array;
import std.algorithm;
import std.concurrency;
import core.bitop;
import core.stdc.stdlib;

void main() {
    detectSequence(detectCombination());
}

ushort detectCombination() {
    ushort[] candidates = generatePermutation();
    while (0 < candidates.length) {
        ushort q = candidates.back; candidates.popBack;

        query(decode(q));
        ushort[][] grouped = group(q, candidates);

        int n = reply();
        if (4 == n) return q;
        candidates = grouped[n].dup;
    }
    return 0; // dummy;
}

ushort[] generatePermutation() {
    ushort[] perm;
    foreach (i; 0..10) {
        foreach (j; 0..10) {
            if (j == i) continue;
            foreach (k; 0..10) {
                if (k == i || k == j) continue;
                foreach (l; 0..10) {
                    if (l == i || l == j || l == k) continue;
                    perm ~= encode([i, j, k, l]);
                }
            }
        }
    }
    return perm;
}

ushort encode(int[] n) {
    return to!ushort((1<<n[0]) | (1<<n[1]) | (1<<n[2]) | (1<<n[3]));
}

ushort[][] group(ushort q, ushort[] candidates) {
    ushort[][] grouped = new ushort[][](5, 0);
    foreach (c; candidates) {
        grouped[(c & q).popcnt] ~= c;
    }
    return grouped;
}

void query(int[] n) {
    spawn(&spawnedQuery, n[0], n[1], n[2], n[3]);
}

void spawnedQuery(int n0, int n1, int n2, int n3) {
    writef("%s %s %s %s\n", n0, n1, n2, n3);
    stdout.flush;
}

int[] decode(ushort b) {
    int[] n;
    n ~= b.bsr; b &= ~(1<<n.back);
    n ~= b.bsr; b &= ~(1<<n.back);
    n ~= b.bsr; b &= ~(1<<n.back);
    n ~= b.bsr;
    return n;
}

int reply() {
    int x, y;
    readf("%s %s", &x, &y);
    readln;
    if (4 == x) exit(0);
    return x + y;
}

void detectSequence(ushort b) {
    if (0 == b) exit(1);

    int[] n = decode(b);
    sort(n);
    do {
        query(n);
        reply();
    } while (nextPermutation(n));
}
