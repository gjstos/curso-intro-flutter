// função nomeada
void func({bool check, int valor}){
  print(check);
  print(valor);
}

void main(List<String> args) {
  bool chk = true;
  int i = 5;

  func(check: chk, valor: i);
}