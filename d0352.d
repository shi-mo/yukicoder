import std.stdio;
import std.conv;

void main() {
    int n; readf("%s\n", &n);

    double fact = 1;
    double sumCost = 1;
    long sumI = 0;
    long sumIJ = 0;

    foreach (i; 2..(n+1)) {
        sumIJ += (i-1) * sumI;
        sumCost = (i*sumCost) + (2*fact) + (2*fact/(i-1)*sumIJ);
        fact *= i;
        sumI += i-1;
    }
    writef("%.10f\n", sumCost / fact);
}
