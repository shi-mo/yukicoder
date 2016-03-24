import std.stdio;

void main() {
    uint l, k, n;

    readf("%s %s\n", &l, &k);

    n = l / (2*k);
    if (0 == l % (2*k)) { --n; }

    writeln(n*k);
}
