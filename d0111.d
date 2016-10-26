import std.stdio;

void main() {
    ulong l; readf("%s", &l);
    ulong k = (l-1) / 2;
    writeln(k*k);
}
