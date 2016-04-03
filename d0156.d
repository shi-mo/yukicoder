import std.stdio;
import std.string;
import std.algorithm;
import std.conv;
import std.array;

void main() {
    int n, m; readf("%s %s\n", &n, &m);
    int[] c = readln.strip.split.map!(to!int).array.sort!("a > b").array;

    int rest = sum(c) - m;
    int ans = n;
    foreach (ci; c) {
        if (rest <= 0) break;
        rest -= ci;
        --ans;
    }
    writeln(ans);
}
