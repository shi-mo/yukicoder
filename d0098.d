import std.stdio;
import std.math;

void main() {
    double x, y; readf("%s %s\n", &x, &y);
    double r = sqrt(x*x + y*y) * 2;
    writeln((ceil(r) <= r) ? (1 + ceil(r)) : ceil(r));
}
