import std.stdio;
import std.array;
import std.conv;
import std.algorithm;

long[] dp;
enum UNDEF = -1L;

void main() {
    uint n, m; readf("%s %s\n", &n, &m);
    uint[][] score = loadScoreTable(n, m);

    uint a = 2^^n - 1;
    dp.length = a+1; foreach (i; 0..(a+1)) { dp[i] = UNDEF; }
    writeln(dfs(0, a, n, score));
}

uint[][] loadScoreTable(uint n, uint m) {
    uint[][] table = new uint[][](n, n);

    foreach (_; 0..m) {
        uint i, j, s;
        readf("%s %s %s\n", &i, &j, &s);
        table[i][j] = s;
    }
    return table;
}

long dfs(uint done, uint left, uint n, const uint[][] score) {
    if (UNDEF != dp[done]) return dp[done];
    if (0 == left) return 0;

    long maxScore = 0;
    foreach (i; 0..n) {
        if (0 == (left & 1<<i)) continue;

        long s = 0;
        foreach (j; 0..n) {
            if (done & 1<<j) s += score[i][j];
        }
        s += dfs(done | 1<<i, left & ~(1<<i), n, score);

        maxScore = max(maxScore, s);
    }
    return dp[done] = maxScore;
}
