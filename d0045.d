import std.stdio;
import std.string;
import std.array;
import std.algorithm;
import std.conv;

void main() {
    uint n;
    readf("%s\n", &n);

    uint[] v = [ 0u ] ~ readln.strip.split.map!(to!uint).array;

    uint[] dp = [ 0, v[1] ]; dp.length = n+1;
    uint[] mx = [ 0, v[1] ]; mx.length = n+1;

    foreach(i; 2..(n+1)) {
        dp[i] = v[i] + mx[i-2];
        mx[i] = max(dp[i], mx[i-1]);
    }
    writeln(max(dp[n], dp[n-1]));
}
