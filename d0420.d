import std.stdio;
import std.math;
import std.bigint;

void main() {
    int x; readf("%s", &x);

    if (31 < x) {
        writeln("0 0");
        return;
    }
    if (0 == x) {
        writeln("1 0");
        return;
    }
    auto cnt = c(31, x);
    auto sum = ((1L<<31) - 1) * c(30, x-1);
    writeln(cnt, " ", sum);
}

BigInt c(int n, int k) {
    BigInt r = 1;
    foreach (i; 1..n + 1) {
        r *= BigInt(i);
    }
    foreach (i; 1..k + 1) {
        r /= BigInt(i);
    }
    foreach (i; 1..(n-k) + 1) {
        r /= BigInt(i);
    }
    return r;
}
