import std.stdio;

void main() {
    int d1, d2, d3, s; readf("%s %s %s %s", &d1, &d2, &d3, &s);
    writeln((1 == s) || ((d1 + d2 + d3) < 2) ? "SURVIVED" : "DEAD");
}
