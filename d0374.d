import std.stdio;

void main() {
    ulong a, b; readf("%s %s", &a, &b);
    writeln((a < b) ? "K" : "S");
}
