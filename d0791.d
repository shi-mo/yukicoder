import std.stdio, std.string, std.regex, std.conv;

void main() {
    auto m = match(readln.strip, r"^1(3+)$");
    writeln(m ? to!int(m.captures[1].length) : -1 );
}
