import std.stdio;

void main() {
    ulong m; readf("%s", &m);
    ulong d = divisor(m);
    writef("%d %d\n", d, m/d);
}

ulong divisor(ulong m) {
    ulong i = 2, x = m/2;

    while (i <= x) {
        if (0 == (m % i)) { return i; }
        i++;
        x = m / i;
    }
    return 1;
}
