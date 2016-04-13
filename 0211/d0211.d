import std.stdio;

void main() {
    int k; readf("%s\n", &k);
    
    double c = 0;
    foreach (i; [2, 3, 5, 7, 11, 13]) {
        foreach (j; [4, 6, 8, 9, 10, 12]) {
            if (k == i*j) ++c;
        }
    }
    writef("%.13f\n", c/36);
}
