import std.stdio;
import std.math;

void main() {
    int n; readf("%s\n", &n);
    int even = 0;

    foreach (_; 0..n) {
        int x; readf(" %s", &x);
        if (0 == x%2) ++even;
    }
    writeln((n - 2*even).abs);
}
