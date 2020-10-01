import std.stdio, std.string;
void main() {
    int n, m; readf("%s %s\n", &n, &m);
    foreach (i; 0..n) {
        string s = readln;
        if (-1 != s.indexOf("LOVE")) {
            writeln("YES");
            return;
        }
    }
    writeln("NO");
}
