import std.stdio;
import std.conv;
import std.math;

void main() {
    ulong n; readf("%s", &n);

    ulong tmax = n-1;
    ulong tmin = tmax;

    ulong[] d = [1];
    foreach (i; 2..n.to!double.sqrt().to!ulong + 1) {
        if (0 != n % i) { continue; }
        d ~= i;
    }

    ulong nd = d.length;
    foreach (i; 0..nd) {
        foreach (j; i..nd) {
            ulong a = d[i];
            ulong b = d[j];
            if (0 != n % (a*b)) { continue; }

            ulong c = n / a / b;
            ulong x = a + b + c - 3;
            tmin = (tmin <= x) ? tmin : x;
        }
    }

    writeln(tmin, " ", tmax);
}
