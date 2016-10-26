import std.stdio;
import std.string;
import std.regex;
import std.conv;

void main() {
    string s = readln.strip;

    auto m = match(s, r"^([+-]?[0-9]+)([+-])([+-]?[0-9]+)$");
    int x = m.captures[1].to!int;
    int y = m.captures[3].to!int;
    string op = m.captures[2];

    if ("+" == op) {
        writeln(x-y);
        return;
    }
    writeln(x+y);
}
