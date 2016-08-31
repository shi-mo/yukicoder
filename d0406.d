import std.stdio;
import std.conv;
import std.array;
import std.algorithm;

void main() {
    int n;
    readf("%s\n", &n);

    uint[] x = readln().split.map!(to!uint).array;
    sort(x);

    uint d = x[1] - x[0];
    if (0 == d) {
        writeln("NO");
        return;
    }

    foreach (i; 2..n) {
        if ((x[i] - x[i-1]) != d) {
            writeln("NO");
            return;
        }
    }
    writeln("YES");
}
