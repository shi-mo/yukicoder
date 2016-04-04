import std.stdio;
import std.string;
import std.algorithm;
import std.array;
import std.conv;
import core.stdc.stdlib;

void main() {
    int[] a = readln.strip.split(".").map!(to!int).array;
    int[] b = readln.strip.split(".").map!(to!int).array;

    foreach (i, ai; a) {
        if (b[i] < ai) break;
        if (b[i] == ai) continue;

        writeln("NO");
        exit(0);
    }
    writeln("YES");
}
