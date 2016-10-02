import std.stdio;

void main() {
  uint h, w;
  readf("%s %s\n", &h, &w);
  writeln((h < w) ? "YOKO" : "TATE");
}
