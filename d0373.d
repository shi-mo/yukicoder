import std.stdio;

void main() {
    ulong a, b, c, d;
    readf("%s %s %s %s\n", &a, &b, &c, &d);

    writeln(((((a%d) * b) % d) * c) % d);
}
