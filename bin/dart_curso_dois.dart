void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 25;
  bool isMadura;

  if (diasDesdeColheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }

  //instanciando classes
  //observe que a propriedade isMadura é {opcional} no construtor
  Fruta melancia = Fruta('Melancia', 1500.0, 'Verde', 'Doce', 40);
  melancia.estaMadura(43);

  Legumes mandioca = Legumes('Macaxeira', 1200, 'Marrom', true);
  Fruta banana = Fruta('Banana', 75, 'Amarelo', 'Doce', 12);
  Nozes macadamia = Nozes('Macadâmia', 2, 'Branco Amarelado', 'Doce', 20, 35);
  Citricas limao = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

  mandioca.printAlimento();
  banana.printAlimento();
  macadamia.printAlimento();
  limao.printAlimento();

  mandioca.cozinhar();
  limao.fazerSuco();

  banana.separarIngredientes();
  macadamia.fazerMassa();
}

//funções
bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

void mostrarMadura(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }

  if (cor != null) {
    print("A $nome é $cor.");
  }
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = dias - diasParaMadura;
  return quantosDiasFaltam;
}

// classes em dart e construtores
class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  //funções dentro de uma classe são métodos
  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A sua $nome foi colhida à $diasDesdeColheita dias, "
        "e precisa de $diasParaMadura para poder comer. "
        "Ela está madura? $isMadura");
  }

  void fazerSuco() {
    print('Você fez um ótimo suco de $nome');
  }

  @override
  void assar() {
    print('Colocar no forno');
  }

  @override
  void fazerMassa() {
    print('Misturar a fruta com farinha, açúcar, ovos, etc...');
  }

  @override
  void separarIngredientes() {
    print('Pegar a $nome');
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print('Este(a) $nome pesa $peso gramas e é $cor.');
  }
}

class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto, o $nome está cozinhando!');
    } else {
      print('Nem precisa cozinhar!');
    }
  }

  @override
  void assar() {
    // Colocar mais tempo
  }

  @override
  void fazerMassa() {
    // Fazer uma papa com o legume
  }

  @override
  void separarIngredientes() {
    // Ver se o alimento está cozido ou cru
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe refrigerante de $nome.');
    } else {
      print('Não existe refri de $nome.');
    }
  }
}

//classe nozes herda de fruta onde já está implementando a classe abstrata bolo, então não é necessário a anotação implements novamente
class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  @override
  void fazerMassa() {
    print('Tirar a casca');
    super.fazerMassa();
  }
}

//como uma classe abstrata funciona em dart
abstract class Bolo {
  void separarIngredientes();

  void fazerMassa();

  void assar();
}
