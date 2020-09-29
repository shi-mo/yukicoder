import std.stdio;
import std.conv;
import std.array;

void main() {
    uint n, d;
    readf("%s %s\n", &n, &d);

    immutable uint m = 2*n*n;
    uint[] cxy = new uint[](m+1);
    uint[] cwz = new uint[](m+1);

    foreach (i; 1..(n+1)) {
        uint i2 = i*i;
        foreach (j; 1..(n+1)) {
            uint j2 = j*j;
            cxy[i2 + j2]++;

            uint wz = i2 - j2 + d;
            if (0 < wz && wz <= m) {
                cwz[wz]++;
            }
        }
    }

    uint sum = 0;
    foreach (i; 2..(m+1)) {
        sum += cxy[i] * cwz[i];
    }
    writef("%d\n", sum);
}
