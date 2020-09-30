import std.stdio;
import std.conv;
import std.array;
import std.math;
import std.algorithm;

void main() {
    int x; readf("%s\n", &x);

    int[] f = new int[](x+1);
    foreach (i; 1..(x+1)) {
        f[i] = i - 1;
    }
    foreach (i; 2..(x+1)) {
        for (int j = 0; j <= x; j += i) {
            f[j]--;
        }
    }

    int[][] p = new int[][](x);
    foreach (a; 1..(x/2 + 1)) {
        int b = x - a;
        int score = (f[a]-f[b]).abs;
        if (null == p[score]) p[score] = [];
        p[score] ~= a;
        if (b != a) p[score] ~= b;
    }

    int[] ans = p.find!((a) => null != a)[0];
    foreach(a; ans.sort()) {
        writef("%s %s\n", a, (x-a));
    }
}
