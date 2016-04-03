import std.stdio;
import std.conv;

void main() {
    int a_, b_, x_, y_; readf("%s %s %s %s\n", &a_, &b_, &x_, &y_);
    double a = to!double(a_);
    double b = to!double(b_);
    double x = to!double(x_);
    double y = to!double(y_);
    writef("%.7f", (b*x < a*y) ? ((a+b)*x)/a : ((a+b)*y)/b);
}
