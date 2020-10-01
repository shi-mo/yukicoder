import std.stdio;
void main() {
    ulong a, b; readf("%s %s\n", &a, &b);
    writeln(a*b%1000000007);
}
