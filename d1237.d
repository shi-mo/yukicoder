import std.stdio;
import std.string;
import std.algorithm;
import std.array;
import std.conv;
import std.range;
import std.math;

const int D = 1000000007;

void main() {
    readln; // discard N
    int[] a = readln.strip.split(" ").map!(to!int).array;
    int[] r = a.reduce!(min, max).array;
    immutable int amin = r[0];
    immutable int amax = r[1];

    if (amin <= 0) {
        writeln("-1");
        return;
    }
    if (4 <= amax) {
        writeln(D);
        return;
    }

    int m = 1;
    foreach (ai; a) {
        int factor = ai.iota.map!("a+1").reduce!("a*b");
        m *= pow(ai, factor);
        if (D <= m) {
            writeln(D);
            return;
        }
    }
    writeln(D % m);
}
