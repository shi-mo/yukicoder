import std.stdio;

void main() {
    int n; readf("%s\n", &n);
    int sa = 0;
    foreach (i; 0..n) {
        int a; readf(" %s", &a);
        sa += a;
    }

    int msa = n * (n-1) * 4;
    int x = (msa - sa) / (n-1) / 2;
    writef("%d %d\n", x, n-x);
}
