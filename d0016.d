import std.stdio;
import std.string;
import std.array;
import std.algorithm;
import std.conv;

void main() {
    uint x, n; readf("%s %s\n", &x, &n);
    uint[] a = readln.strip.split.map!(to!uint).array.sort().array;

    const uint M = 1000003;
    uint amax = a[n-1];
    uint[] m = new uint[amax + 1];
    m[0] = 1;
    if (0 < amax) { m[1] = x % M; }
    foreach (i; 2..(amax+1)) {
        m[i] = (m[i-1] * m[1]) % M;
    }
    writeln(a.map!(ai => m[ai]).sum % M);
}
