import std.stdio;

void main() {
    long[3] f; long n; readf("%s %s %s\n", &f[0], &f[1], &n);
    f[2] = f[0] ^ f[1];
    writeln(f[n%3]);
}
