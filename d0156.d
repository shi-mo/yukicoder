import std.stdio;
import std.string;
import std.algorithm;
import std.conv;
import std.array;

void main() {
    int n, m; readf("%s %s\n", &n, &m);
    int[] c = readln.strip.split.map!(to!int).array.sort().array;

    int ans = 0;
    foreach (ci; c) {
        if (m <= 0) break;
        if (m < ci) break;
        m -= ci;
        ++ans;
    }
    writeln(ans);
}
