import std.stdio;
import std.conv;
import std.array;
import std.algorithm;

void main() {
    uint[] s = readln().split.map!(to!uint).array;
    sort(s);

    s = s.remove(5);
    s = s.remove(0);
    double sum = sum(s);
    writef("%.2f\n", sum / 4);
}
