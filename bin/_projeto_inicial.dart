void main() {

  // Informações sobre a persona
  int idade = 23;
  double altura = 1.85;
  bool bonito = true;
  const String nome = 'Gabriel Trudes Melo';
  final String apelido = 'Trudes';
  bool maiorDeIdade;
  int energia = 100;

  // Condições
  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }

  // Repetições utilizando for
  for (int i = 1; i < 5; i++) {
    print('Concluí $i voltas');
  }

  // Repetições utilizando while
  while (energia > 0) {
    print('Mais uma repetição');
    energia = energia - 10;
  }

  // Repetições utilizando do while
  do {
    print('Mais uma repetição');
    energia = energia - 10;
  } while (energia > 0);

  // Lista dinâmica onde poderá receber inúmeros tipos de objetos
  List<dynamic> gabriel = [idade, altura, bonito, nome, apelido];

  // Frase que recebe os dados diretamente da lista dinâmica
  String frase = 'Costumam me chamar por ${gabriel[4]} \n'
      'mas meu nome completo é: ${gabriel[3]}, \n'
      'eu me considero bonito? ${gabriel[2]}, \n'
      'eu tenho ${gabriel[0]} anos e \n'
      'tenho ${gabriel[1]} de altura,\n'
      'Eu sou maior de idade? $maiorDeIdade';

  // Lista que receberá strings
  List<String> listanomes = [
    'Gustavo',
    'Thiago',
    'Kathrina',
    'Helen',
    'Gabriel'
  ];

  print(frase);
}
