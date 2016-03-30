import std.stdio;
import std.array;
import std.conv;
import std.algorithm;

uint[string] dp;

void main() {
    uint n, m; readf("%s %s\n", &n, &m);
    uint[][] score = loadScoreTable(n, m);

    uint[] a; foreach (i; 0..n) a ~= i;
    writeln(dfs([], a, score));
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

uint dfs(uint[] done, const uint[] left, const uint[][] score) {
    sort(done);
    string key = done.map!(to!string).join;

    if (key in dp) return dp[key];
    if (0 == left.length) return 0;

    uint maxScore = 0;
    foreach (i; left) {
        uint s = 0;
        foreach (j; done) s += score[i][j];
        s += dfs(done ~ i, left.dup.remove!(a => i == a), score);

        maxScore = max(maxScore, s);
    }
    return dp[key] = maxScore;
}
