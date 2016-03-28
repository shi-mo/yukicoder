import std.stdio;
import std.string;
import std.array;
import std.algorithm;
import std.conv;

void main() {
    uint n; readf("%s\n", &n);
    uint[] v = [ 0u ] ~ readln.strip.split.map!(to!uint).array;

    uint[] dp = [ 0, v[1] ]; dp.length = n+1;
    foreach(i; 2..(n+1)) {
        dp[i] = max(v[i] + dp[i-2], dp[i-1]);
    }
    writeln(dp[n]);
}
