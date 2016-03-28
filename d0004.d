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
    foreach(i; 0..n) {
        for (int j = to!int(dp.length) - 1 - w[i]; 0 <= j; --j) {
            dp[j + w[i]] |= dp[j];
        }
    }
    writeln(dp[sum/2] ? "possible" : "impossible");
}
