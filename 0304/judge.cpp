/* Judge code from http://yukicoder.me/problems/765 */

#include <iostream>
#include <fstream>
using namespace std;
int main(int argc, char* argv[]){
  ifstream ifs(argv[1]);
  string ans;
  ifs >> ans;  //答えの文字列

  while(1){
    string in;
    cin >> in;  //回答コードから受け取った文字列

    if(in == ans){	//正解なら "unlocked" を出力して終了
      cout << "unlocked" << endl;
      return 0;
    }else{  //不正解なら "locked" を出力
      cout << "locked" << endl;
    }

  }

  return 0;
}
