import std.stdio;
import std.conv;
import std.array;

void main() {
    uint n; readf("%s\n", &n);

    uint c = 0;
    foreach (i; 0..(n+1)) {
        foreach (j; 0..(n+1)) {
            if (n < i+j) break;
            c++;
        }
    }
    writeln(c);
}
