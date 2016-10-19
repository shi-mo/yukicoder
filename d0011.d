import std.stdio;
import std.array;
import std.algorithm;

void main() {
    ulong w, h, n; readf("%s\n%s\n%s\n", &w, &h, &n);
    uint[] s = [];
    uint[] k = [];

    foreach (_; 0..n) {
        uint si, ki; readf("%s %s\n", &si, &ki);
        s ~= si;
        k ~= ki;
    }
    s = s.sort().uniq.array;
    k = k.sort().uniq.array;
    writeln((w * h) - ((w - s.length) * (h - k.length)) - n);
}
