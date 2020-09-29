import std.stdio;
import std.string;
import std.conv;

void main() {
    uint a1, b1, a2, b2, a3, b3;
    readf("%s %s %s %s %s %s\n", &a1, &b1, &a2, &b2, &a3, &b3);

    writeln((0 == (a1+a2+a3)%2) ? ":-)" : ":-(");
}
