import std.stdio;
import std.numeric;

void main() {
    ulong n; readf("%s\n", &n);
    ulong a, b, c; readf("%s %s %s", &a, &b, &c);

    ulong m = n/a + n/b + n/c;
    m -= n/a.lcm(b) + n/b.lcm(c) + n/c.lcm(a);
    m += n/a.lcm(b).lcm(c);
    writeln(m);
}

ulong lcm(ulong a, ulong b) {
    ulong g = gcd(a, b);
    ulong na = a / g;
    ulong nb = b / g;
    return na * nb * g;
}
