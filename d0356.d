import std.conv;
import std.stdio;
import std.string;
import std.numeric;
import std.algorithm;
import std.array;

void main() {
    ulong[] t; foreach (_; 0..3) { t ~= to!ulong(readln.strip); }

    ulong lcm = lcm(lcm(t[0], t[1]), t[2]);
    ulong[] nr = t.map!(ti => lcm / ti).array;
    ulong q = gcd(nr[0] - nr[2], nr[1] - nr[2]);
    ulong g = gcd(lcm, q);

    writef("%s/%s\n", lcm/g, q/g);
}

ulong lcm(ulong a, ulong b) {
    ulong g = gcd(a, b);
    ulong na = a / g;
    ulong nb = b / g;
    return na * nb * g;
}
