import std.stdio;
import std.string;
import std.math;
import std.conv;

enum MAX = 10 ^^ 9;

void main() {
    uint l = 1;
    uint u = MAX;

    while (l != u) {
        uint c = to!uint((0.5 * (u + l)).ceil);
        writef("? %s\n", c); stdout.flush;

        if ("1" == readln.strip) {
            l = c;
            continue;
        }
        u = c - 1;
    }
    writef("! %s\n", u); stdout.flush;
}
