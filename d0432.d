import std.stdio;
import std.string;
import std.array;
import std.algorithm;
import std.conv;

void main() {
    int t; readf("%s\n", &t);
    foreach (_; 0..t) {
        int[] s = readln.strip.split("").map!(to!int).array;
        while (2 <= s.length) {
            foreach (i; 0..(s.length - 1)) {
                int s_ = s[i] + s[i+1];
                s[i] = (s_ < 10) ? s_ : (1 + s_%10);
            }
            s.popBack();
        }
        writeln(s[0]);
    }
}
