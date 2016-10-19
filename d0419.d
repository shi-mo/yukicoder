import std.stdio;
import std.math;
import std.conv;

void main() {
    int a, b; readf("%s %s", &a, &b);
    writef("%.10f\n", ((a == b) ? (a*a + b*b) : (b*b - a*a).abs).to!double.sqrt);
}
