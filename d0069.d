import std.stdio;
import std.string;
import std.conv;
import std.algorithm;
import std.array;

void main() {
    ubyte[] a = readln().strip.map!(to!ubyte).array;
    ubyte[] b = readln().strip.map!(to!ubyte).array;

    sort(a); sort(b);
    writeln((a == b) ? "YES" : "NO");
}
