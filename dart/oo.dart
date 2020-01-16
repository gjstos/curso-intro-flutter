class Pessoa {
    String _nome;
    int _idade;
    
    Pessoa(this._nome, this._idade);
    
    get nome => _nome;
    set nome(String nome) => this._nome = nome;
    
    get idade => _idade;
    set idade(int idade) => this._idade = idade;
}

 

main(List<String> args) {
  Pessoa pessoa = Pessoa("guilherme", 12);

  print(pessoa._idade);

  //print(pessoa.nome);
}