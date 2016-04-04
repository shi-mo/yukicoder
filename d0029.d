import std.stdio;

void main() {
    int n; readf("%s\n", &n);

    short[] c; c.length = 11;
    int ans = 0, nonPaired = 0;
    foreach (_; 0..n) {
        short[3] a; readf("%s %s %s\n", &a[0], &a[1], &a[2]);
        foreach (i; a) {
            if (0 == c[i]) {
                ++c[i];
                ++nonPaired;
                continue;
            }
            ++ans;
            --nonPaired;
            c[i] = 0;
        }
    }
    ans += nonPaired/4;
    writeln(ans);
}
