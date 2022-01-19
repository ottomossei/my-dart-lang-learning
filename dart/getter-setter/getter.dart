// getter:参照できるメリット
// 計算型プロパティを表現できる。
// final int value;
// int get alpha => (0xff000000 & value) >> 24;
// int alphaとかはくどい（他言語なら値をキャッシュして軽くなる）
// setter:条件付きで値を変更できるメリット
// 関連ワード：Computed property、関数従属性
// getter&setter:リファクタリング、クライアント側（main.dart）を
// 変更せずに、クラス内を変更しやすい

class Car {
  String _name;
  final int _number;

  Car(this._name, this._number);

  // Getter
  String get name => _name;
  int get number => _number;

  // Setter
  set name(String n) {
    if (n == "Nissan") {
      _name = n;
    }
  }

  // Error
  // final can't set
  // set number(int num){
  //   _number = num;
  // }
}
