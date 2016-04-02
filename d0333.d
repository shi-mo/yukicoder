import std.stdio;

void main() {
    uint a, b; readf("%s %s\n", &a, &b);
    writeln((a < b) ? b-2 : 2000000000-b-1);
}
