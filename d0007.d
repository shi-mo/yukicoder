import std.stdio;
import std.algorithm;
import std.array;


uint[] p;
bool[] dp;
bool[] examined;

void main() {
    uint n; readf("%s\n", &n);

    p = primeNumbers(n); reverse(p);
    dp = [ true, true ]; dp.length = n + 1;
    examined = [ true, true ]; examined.length = n + 1;

    writeln(blackWins(n) ? "Win" : "Lose");
}

uint[] primeNumbers(uint n) {
    uint[] p = [];
    bool[] notPrime = []; notPrime.length = n + 1;

    foreach (i; 2..(n+1)) {
        if (notPrime[i]) { continue; }

        p ~= i;
        for (uint j = i; j <= n; j += i) {
            notPrime[j] = true;
        }
    }
    return p;
}

bool blackWins(uint n) {
    if (examined[n]) { return dp[n]; }

    bool whiteLoses = false;
    foreach (i; p.filter!(a => a <= n)) {
        if (whiteLoses |= !blackWins(n-i)) { break; }
    }
    examined[n] = true;
    return dp[n] = whiteLoses;
}
