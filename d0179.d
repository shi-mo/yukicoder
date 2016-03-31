import std.stdio;
import std.string;

void main() {
    int h, w; readf("%s %s\n", &h, &w);
    string[] s; bool isEmpty = true;
    foreach (i; 0..h) {
        s ~= readln;
        if (0 <= s[i].indexOf('#')) isEmpty = false;
    }
    if (isEmpty) {
        writeln("NO");
        return;
    }

    bool ok = false;
    foreach (dx; 0..h) {
        if (ok) break;
        foreach (dy; (1-w)..w) {
            if (ok) break;
            if (0 == dx && 0 == dy) continue;
            ok |= canPaintBicolor(h, w, s, dx, dy);
        }
    }
    writeln(ok ? "YES" : "NO");
}

bool canPaintBicolor(uint h, uint w, string[] s, uint dx, int dy) {
    bool[][] checked = new bool[][](h, w);

    bool result = true;
    foreach (i; 0..h) {
        if (!result) break;
        foreach (j; 0..w) {
            if (!result) break;
            if (checked[i][j]) continue;
            if ('#' != s[i][j]) continue;

            checked[i][j] = true;
            int ni = i + dx;
            int nj = j + dy;
            if (ni < 0 || h <= ni || nj < 0 || w <= nj || '#' != s[ni][nj]) {
                result = false;
                break;
            }
            checked[ni][nj] = true;
        }
    }
    return result;
}
