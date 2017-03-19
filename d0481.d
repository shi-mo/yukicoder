import std.stdio;

void main() {
    int a=55, b;
    foreach (_; 0..9) {
        readf("%s ", &b);
        a -= b;
    }
    writeln(a);
}
