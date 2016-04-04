import std.stdio;
import std.math;

void main() {
    double c; readf("%s\n", &c);
    double ri, ro; readf("%s %s\n", &ri, &ro);
    writef("%.10f\n", (PI^^2) * c * (ro + ri) * ((ro - ri)^^2) / 4);
}
