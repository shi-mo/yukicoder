import std.stdio;
import std.array;
import std.string;

void main() {
    int n, k;
    string s;
    readf("%s %s\n", &n, &k);
    s = readln.strip;

    int[][] stack;
    foreach (int i, c; s) {
        int j = i + 1;
        if ( '(' == c ) {
            stack ~= [j, (j == k) ? 1 : 0];
            continue;
        }

        int[] p = stack.back; stack.popBack;
        int v = p[0];
        if ((1 == p[1])) {
            writeln(j);
            break;
        }
        if (j == k) {
            writeln(v);
            break;
        }
    }
}
