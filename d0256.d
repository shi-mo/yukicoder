import std.stdio;
import std.string;
import std.conv;
import std.algorithm;
import std.array;

void main() {
    ubyte[] s = readln.strip.map!(to!ubyte).array;
    writeln(s.sort!("a > b").map!(to!char));
}
