import std.stdio;

void main() {
    int n; readf("%s\n", &n);

    string s = 0 == n%2 ? "1" : "7";
    foreach (_; 1..(n/2)) s ~= '1';
    writeln(s);
}
