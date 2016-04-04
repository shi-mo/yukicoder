import std.stdio;
import std.conv;

void main() {
    char[] buf;
    int n = to!int(readln(buf));

    long nw = 0, ans = 0;
    for (int i = n-1; 0 <= i; --i) {
        switch (buf[i]) {
            case 'w':
                ++nw;
                break;
            case 'c':
                ans += nw*(nw-1)/2;
                break;
            default:
                break; // do nothing
        }
    }
    writeln(ans);
}
