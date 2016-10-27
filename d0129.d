import std.stdio;
import std.math;
import std.bigint;

void main() {
    ulong n, m; readf("%s\n%s", &n, &m);

    ulong r = (n / 1000) % m;
    if (0 == r) {
        writeln(1);
        return;
    }
    if (m-r < r && 0 < m-r) { r = m-r; }
    writeln(c(m, r) % 10.pow(9));
}

BigInt c(ulong n, ulong k) {
    return factPart(n, k) / factPart(k, k);
}

BigInt factPart(ulong n, ulong k) {
    BigInt res = BigInt(1);
    foreach (i; 0..k) {
        res *= n-i;
    }
    return res;
}
