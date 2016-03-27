import std.stdio;
import core.bitop;

int[] numMoves;

void moveFrom(uint i, uint n) {
   if (!numMoves[i-1]) { return; }

   foreach(neighbor; [ (i + i.popcnt), (i - i.popcnt) ]) {
       if (neighbor < 1 || n < neighbor) { continue; }

       int nmNeighbor = numMoves[i-1] + 1;
       if (numMoves[neighbor-1] && (numMoves[neighbor-1] <= nmNeighbor)) {
           continue;
       }

       numMoves[neighbor-1] = nmNeighbor;
       moveFrom(neighbor, n);
   }
}

void main() {
   uint n;
   readf("%s\n", &n);

   numMoves.length = n;
   numMoves[0] = 1;
   foreach (i; 1..n) {
       moveFrom(i, n);
   }
   writeln(numMoves[n-1] ? numMoves[n-1] : -1);
}
