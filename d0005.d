import std.stdio;
import std.conv;
import std.array;
import std.algorithm;

void main() {
    uint l, n;
    readf("%s\n%s\n", &l, &n);

    uint[] w = readln().split.map!(to!uint).array;
    sort(w);

    uint sum = sum(w);
    for (uint i = n; 0 < i; --i) {
        if (sum <= l) { writeln(i); break; }
        sum -= w[i-1];
    }
}
