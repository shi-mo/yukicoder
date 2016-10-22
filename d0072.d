import std.stdio;
import std.bigint;

void main() {
    ulong n; readf("%s", &n);
    BigInt a = n / 2;
    BigInt b = n - a;
    writeln(((a+1) * (b+1) - 1) % 1000007);
}
