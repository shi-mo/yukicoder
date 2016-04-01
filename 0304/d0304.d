import std.stdio;
import std.string;

void main() {
    foreach (i; 0..1000) {
        writef("%03d\n", i);
        stdout.flush;
        if ("unlocked" == readln.strip) break;
    }
}
