import std.stdio, std.array, std.conv, std.algorithm;
void main() {
    int[] d = readln.split.map!(to!int).array;
    writeln(([1989, 1, 8] <= d && d <= [2019, 4, 30]) ? "Yes" : "No");
}
