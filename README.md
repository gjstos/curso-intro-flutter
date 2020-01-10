# Curso de Introdução ao Flutter

# *Desvendando o Flutter*

## Dart Lang

### Print

Comando para exibir algo no console.

```dart
/// usual
print("Code is life");

/// utilizando variáveis
var variavel = 'bASS';
print('Send $variavel to everyone, because BASS is life!');
```



### Variáveis

O Dart é uma linguagem fortemente tipada, ou seja, há a necessidade de informar o tipo da variável no momento da declaração.

- Exemplos de variáveis mais comuns:

  ```dart
  int     valor1;
  bool    valor2;
  String  valor3;
  ```

- Há também algumas variáveis alternativas:

  ```dart
  /// tipo flexível, ou seja, aceita qualquer tipo de dado. Contudo, uma vez 
  /// inserido um valor não há a possibilidade de inserir outro valor com um
  /// tipo diferente
  var valor4;
  /// tipo flexível, porém diferente do anterior há a possibilidade de alterar 
  /// para um valor com um tipo diferente
  dynamic valor5;
  ```

  

### Listas

Há basicamente dois tipos de listas no Dart: 

- List
- Map

#### List

```dart
/// lista tradicional
List lista = [1, 2, 3, 4.5, 6.7, "ab", 'cd', true, false];

/// lista tipada
List<dynamic> lista = [1, 2, 3, 4.5, 6.7, "ab", 'cd', true, false];

/// acessando as informações
lista[0];
lista[7];
```

#### Map

```dart
/// map tradicional
Map map = {
    'nome': 'Guilherme',
    'idade': 21,
    'altura': 1.70,
    'dev': true
};

/// map tipado
Map<String, dynamic> map = {
    'nome': 'Guilherme',
    'idade': 21,
    'altura': 1.70,
    'dev': true
};

/// acessando as informações
map['nome'];
map['dev'];
```



### Operadores Lógicos

Os operadores lógicos são o que fazem o código acontecer. Abaixo está uma tabela com alguns operadores mais utilizados:

| Descrição                  | Operador Lógico                                              |
| -------------------------- | ------------------------------------------------------------ |
| Sufixo unário              | `*expr*++`  `*expr*--`  `()`                                 |
| Prefixo unário             | `-*expr*`  `!*expr*`  `~*expr*`  `++*expr*`  `--*expr*`   `await` |
| Multiplicativo             | `*`  `/`  `%` `~/`                                           |
| Mudança                    | `<<`  `>>`  `>>>`                                            |
| Teste relacional e de tipo | `>=`  `>`  `<=`  `<`  `as`  `is`  `is!`                      |
| Igualdade                  | `==`  `!=`                                                   |
| AND lógico                 | `&&`                                                         |
| OR lógico                  | `\|\|`                                                       |
| Se nulo                    | `??`                                                         |
| Tarefa                     | `=`  `*=`  `/=`  `+=`  `-=`  `*etc.*`                        |



### Estruturas Condicionais

Estruturas Condicionais são necessárias para a tomada de decisão ao decorrer do código. Abaixo estão as estruturas condicionais utilizadas na linguagem:

#### IFs

```dart
/// método tradicional
if (condicao1) {
    /// code
} else if (condicao2) {
    /// code
} else {
    /// code
}

/// método clean para somente duas condições
condicao ? /* code para valor verdadeiro */ : /* code para valor falso */;
```

#### Switch

```dart
switch (variavel) {
    case 1:
        break;
    default:
        break;
}
```



### Estruturas de Repetição

Esse tipo de estrutura é necessário quando  há a necessidade de repetir um determidado bloco de código enquanto uma dada condição seja verdadeira.

#### For

```dart
/// método tradicional
for (/* inicio */; /* enquanto */; /* alteração */) {
    /// code
}

/// método Interável
for (var item in objeto) {
    /// code
}
```

#### While

```dart
/// verifica a condição antes de executar os comandos
while (condicao) {
    /// code
    /// alteração da condição
}
```

#### do While

```dart
/// executa os comandos antes de verificar a condição
do {
    /// code
    /// alteração da condição
} while (condicao);
```



### Funções

Uma função nada mais é do que um conjunto de rotinas agrupadas em um bloco. 

```dart
/// função com tipo de retorno
bool func() {
    return true;
}

//// função sem tipo de retorno
func() {
    return true;
}

/// função com apenas uma expressão
bool func(int valor) => map[valor] != null;

//// função com parâmetros opcionais
//// Ex: func(check: true, valor: 2);
void func({bool check, int valor});

//// função com parâmetros opcionais padrões
void func({bool check = false, int valor});

/// função com parâmetros opcionais e obrigatórios
void func({@required bool check, int valor});

/// função anônima
/// ( parâmetro ) { code }
list.forEach((item) {
  print('${list.indexOf(item)}: $item');
});
```



### Orientação a Objetos

#### Classe

Para definir uma classe no Dart é preciso somente utilizar a  palavra reservada 'class' e um nome para esta classe

```dart
/// criação de uma nova classe
class Pessoa {
    
}

/// instanciação de classe não tipada
/// note que não há necessida de de utilizar o new
var pessoa = Pessoa();

/// instanciação de classe tipada
Pessoa pessoa = Pessoa();
```

#### Atributo

Para adicionar um atributo a uma classe é necessário somente uma(s) variável(eis) e o(s) tipo(s) que ela(s) pertence(m).

```dart
/// Atributos públicos
class Pessoa {
    String nome;
    int idade;
}

/// Atributos privados
class Pessoa {
    String _nome;
    int _idade;
}
```

#### Construtor

Construtor é um método especial que é chamado sempre que é criado um objeto de uma dada classe. Ou seja, sempre que é instanciada um objeto para uma classe esse método é chamado.

```dart
/// classe com construtor tradicional
/// note que foi utilizado a palavra reservada 'this' para acessar o atributo global
/// da classe
class Pessoa {
    String nome;
    int idade;
    
    Pessoa(String nome, int idade){
        this.nome = nome;
        this.idade = idade;
    }
}

/// classe com construtor mais bonito na instanciação
class Pessoa {
    String nome;
    int idade;
    
    Pessoa({String nome, int idade}) {
        this.nome = nome;
        this.idade = idade;
    }
} 

/// classe com construtor inteligente no Dart
class Pessoa {
    String nome;
    int idade;
    
    Pessoa({this.nome, this.idade});
} 
```

#### Getters e Setters

Os Getters e Setters são utilizados como forma de proteger (encapsular) o código.

```dart
/// método tradicional de getter e setter
class Pessoa {
    String _nome;
    int _idade;
    
    Pessoa({this.nome, this.idade});
    
    void setNome(String nome) {
        this.nome = nome;
    }
    
    String getNome() {
        return nome;
    }
    
    void setIdade(int idade) {
        this.idade = idade;
    }
    
    int getIdade() {
        return idade;
    }
}

/// método inteligente no Dart
class Pessoa {
    String _nome;
    int _idade;
    
    Pessoa(this._nome, this._idade);
    
    get nome => _nome;
    set nome(String nome) => this._nome = nome;
    
    get idade => _idade;
    set idade(int idade) => this._idade = idade;
}

/// acessando e alterando externamente
print(pessoa.nome);
print(pessoa.idade);

pessoa.nome = "Darui";
pessoa.idade = "47";
```

#### Herança

A Herança permite criar uma classe a partir de uma existente. Ou seja, todas as informações da classe que 'Pai' poderão ser acessadas na classe 'Filha'.

```dart
class Humano {
    /// atributos 
    /// code
}

class Pessoa extends Humano {
    /// recebe os atributos de Humano 
    /// recebe os codes de Humano 
}
```



### Links Interessantes

- [Boas práticas do Dart](https:///dart.dev/guides/language/effective-dart/style)
- [Deixando o código Dart mais bonito](https:///dart.dev/guides/language/effective-dart/design)
- [Documentação do Dart](https:///dart.dev/guides)