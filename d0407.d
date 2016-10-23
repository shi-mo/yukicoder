import std.stdio;

void main() {
    uint n, l; readf("%s %s", &n, &l);

    uint pmax = l / (n-1);
    bool[] notPrime = new bool[pmax+1];

    ulong c = 0;
    foreach (i; 2..pmax + 1) {
        if (notPrime[i]) { continue; }

        for (uint j = i*2; j <= pmax; j += i) {
            notPrime[j] = true;
        }

        c += l - ((n-1) * i) + 1;
    }
    writeln(c);
}
