import std.stdio;
import std.conv;
import core.math;

int numRotations(int x, int y) {
    return (y < 0) ? 2 : ((0 == x) ? 0 : 1);
}

void main() {
    int x, y, l;
    readf("%s\n%s\n%s\n", &x, &y, &l);

    int nx = (to!int(fabs(x)) + l - 1) / l;
    int ny = (to!int(fabs(y)) + l - 1) / l;
    writeln(nx + ny + numRotations(x, y));
}
