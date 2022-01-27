Future<void> producer(int i) async {
  if (i < 20) {
    await Future.delayed(Duration(milliseconds: 100));
    if (buffer.length < 10) {
      buffer.add(i);
      print("produced $i");
      if (i == 19) print("Production is finished");
      i++;
    }
  } else {
    return;
  }
  producer(i);
}

Future<void> customer() async {
  int pop;
  await Future.delayed(const Duration(milliseconds: 300));
  if (buffer.isEmpty) {
    return;
  } else {
    pop = buffer.removeAt(0);
    print("consumed $pop");
  }
  customer();
}

List<int> buffer = [];

void start() {
  producer(0);
  customer();
}

void main(List<String> args) {
  start();
}
