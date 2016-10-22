import std.stdio;

void main() {
    ulong n; readf("%s", &n);
    ulong a = n / 2;
    ulong b = n - a;
    writeln((a+1) * (b+1) - 1);
}
