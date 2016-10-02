import std.stdio;

void main() {
    int a, b;
    readf("%s %s", &a, &b);

    if (a == b) {
        writeln(0);
        return;
    }
    if (a < b) { write("+"); }
    writeln(b - a);
}
