import std.stdio;
void main() {
    int m; readf("%s\n", &m);
    foreach (i; 0..m) {
        int n; readf("%s\n", &n);
        if (0 == n%40) {
            writeln("ikisugi");
            continue;
        }
        if (0 == n%10) {
            writeln("sugi");
            continue;
        }
        if (0 == n%8) {
            writeln("iki");
            continue;
        }
        writeln(n/3);
    }
}
