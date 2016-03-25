import std.stdio;
import core.bitop;

void main() {
    size_t n;
    readf("%s\n", &n);

    if (n <= 1) {
        writeln(0);
        return;
    }
    writeln(bsr(n-1)+1);
}
