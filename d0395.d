import std.stdio;

void main() {
    int n;
    readf("%s", &n);
    writeln( (n <= 14) ? -1 : (n-7) );
}
