import std.stdio;

void main() {
    long w, d; readf("%s\n%s\n", &w, &d);
    for (long i = d; 2 <= i; --i) w -= w/i/i;
    writeln(w);
}
