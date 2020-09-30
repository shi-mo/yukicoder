import std.stdio;
import std.algorithm;
import std.array;
import std.math;
import std.numeric;

bool[] notPrime;

void main() {
    uint t; readf("%s\n", &t);
    const int PMAX = 5000000;
    notPrime = generateNotPrime(PMAX);

    foreach(i; 0..t) {
        ulong a;
        uint p;
        readf("%s %s\n", &a, &p);
        if (notPrime[p]) {
            writeln("-1");
            continue;
        }
        writeln((1 == gcd(a, p)) ? 1 : 0);
    }
}

bool[] generateNotPrime(uint n) {
    bool[] notPrime = []; notPrime.length = n + 1;

    notPrime[1] = true;
    foreach (i; 2..(n+1)) {
        if (notPrime[i]) { continue; }

        for (uint j = i*2; j <= n; j += i) {
            notPrime[j] = true;
        }
    }
    return notPrime;
}
