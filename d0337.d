import std.stdio;

void main() {
    int n, p; readf("%s %s\n", &n, &p);
    writeln((0 == p || 1 == n) ? "=" : "!=");
}
