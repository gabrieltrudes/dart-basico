void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 25;
  bool isMadura;

  if(diasDesdeColheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }

  //instanciando classes
  //observe que a propriedade isMadura é {opcional} no construtor
  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);
  Fruta fruta02 = Fruta("Uva", 40, "Roxa", "Doce", 20);

  fruta01.estaMadura(15);
  fruta02.estaMadura(60);
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
class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura});

  //funções dentro de uma classe são métodos
  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A sua $nome foi colhida à $diasDesdeColheita dias, "
        "e precisa de $diasParaMadura para poder comer. "
        "Ela está madura? $isMadura");
  }
}

