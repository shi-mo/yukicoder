import std.stdio;

void main() {
    int l, n;
    readf("%s\n%s\n", &l, &n);
    writeln(n * (2 ^^ (l-3)));
}
