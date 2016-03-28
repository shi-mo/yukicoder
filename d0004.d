import std.stdio;
import std.string;
import std.algorithm;
import std.conv;
import std.array;

void main() {
    uint n; readf("%s\n", &n);
    uint[] w = readln.strip.split.map!(to!uint).array;

    uint sum = w.sum;
    if (0 != sum%2) {
        writeln("impossible");
        return;
    }

    bool[] dp = [ true ]; dp.length = sum + 1;
    foreach (i; 0..n) {
        foreach_reverse (j, v; dp[0 .. ($ - w[i])]) {
            dp[j + w[i]] |= v;
        }
    }
    writeln(dp[sum/2] ? "possible" : "impossible");
}
