import std.stdio;
import std.algorithm.iteration;
import std.algorithm.searching;

void main() {
    int n; readf("%s\n", &n);
    long[] lw;
    long m = 0;
    foreach (_; 0..n) {
        long a, b; readf("%s %s\n", &a, &b);
        long w = a + 4*b;
        lw ~= w;
        m = (m < w) ? w : m;
    }

    long[] d, mod;
    foreach (w; lw) {
        d ~= m - w;
        mod ~= (m - w) % 2;
    }
    writeln(mod.canFind(1) ? -1 : sum(d)/2);
}
