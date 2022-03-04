void change(List<int> localList) => localList[0] = 2;

main() {
  List<int> localList = [1];
  // 1
  print("local : ${localList.toString()}");
  change(localList);
  // 2
  print("local : ${localList.toString()}");
}
// primitive
// stack local simple integer,copy, 
// atomic values are small, cant ivide them into smaller parts.


// heap : type of memory

// object (values which are objects referenced values)


/*
map : object on the heap;



メモリ：スタック領域とヒープ領域で、アプリから見ると論理的に分かれらてる。

int, string
スタック領域（Frames）、実行が早いが、領域が狭い。
スタックはバケツみたいなかんじ。ポップする。


関数、list
ヒープ領域(Object)、実行が遅いが、領域が広い。
リストなどでは、スタックにヒープのアドレスを持っている。
（実際の内容を持っているのは、ヒープ領域）


*/

