import std.stdio;

void main() {
    int n;

    readf("%s\n", &n);

    for (int i = 1; i <= n; i++) {
        bool fb = false;

        if (0 == i%3) { writef("Fizz"); fb = true; }
        if (0 == i%5) { writef("Buzz"); fb = true; }
        if (!fb) { writef("%d", i); }
        writeln();
    }
}
