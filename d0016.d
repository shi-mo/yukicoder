import std.stdio;
import std.string;
import std.array;
import std.algorithm;
import std.conv;

const ulong M = 1000003;

void main() {
    ulong x, n; readf("%s %s\n", &x, &n);
    ulong[] a = readln.strip.split.map!(to!ulong).array.sort().array;

    writeln(a.map!(ai => powMod(x, ai)).sum % M);
}

ulong powMod(ulong x, ulong n) {
    if (0 == n) { return 1; }

    ulong res = powMod((x * x) % M, n/2) % M;

    if (0 == (n % 2)) { return res; }
    return (res * x) % M;
}
