import std.stdio;
import std.string;
import std.algorithm;

void main() {
    int n; readf("%s\n", &n);
    string[] a = readln.strip.split;

    int ans = n;
    int[string] c;
    foreach (ai; a) {
        if (!(ai in c)) c[ai] = 0;
        ++c[ai];
        if (2 == c[ai]) ans -= 2;
        if (2 < c[ai]) --ans;
    }
    writeln(ans);
}
