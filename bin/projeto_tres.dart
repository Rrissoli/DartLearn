import 'dart:ffi';

void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "verde e amarela";
  String sabor = "Doce e Cítrica";
  int diasDesdeColheita = 40;
  bool isMadura = funcEstaMadura(diasDesdeColheita);
  print(isMadura);
  // ou
  print(funcEstaMadura(90));

  mostrarMadura(nome, diasDesdeColheita);
  mostrarMaduraComCor(nome, diasDesdeColheita, cor: cor);
  mostrarMaduraComCorPadrao(nome, diasDesdeColheita);
  mostrarMaduraComCorComRequire(nome, diasDesdeColheita, cor: cor);

  int diasFaltam = funcQuantosDiasMadura(dias: diasDesdeColheita);
  funcToString(
      nome: nome,
      peso: peso,
      diasDesdeColheita: diasDesdeColheita,
      diasParaMadura: diasFaltam,
      isMadura: isMadura);

  Fruta fruta1 = Fruta("pera", 2.00, "verde", "doce", 23);
  print(fruta1);
  fruta1.estaMadura(32);
  Legumes mandioca = Legumes("mandioca", 2.0, "amarela", true);
  Citricas limao = Citricas("limao", 0.6, "verde", "azedo", 90, 30);
  Nozes castanahs = Nozes("castanha", 0.01, "marrom", "amadeirado", 90, 90);
  limao.printAlimento();
  mandioca.printAlimento();
  castanahs.printAlimento();

  mandioca.cozinha();
  limao.existeRefri(true);
}

class Fruta extends Alimento implements Bolo{
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(String nome, double peso, String cor,this.sabor, this.diasDesdeColheita,
      {this.isMadura}):super(nome,peso,cor);

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome ela foi colhida $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer , portanto ela está madura ? $isMadura");
  }
  fazerSuco(){
    print("você fez um otimo suco de $nome");
  }
  @override
  String toString() {
    return 'Fruta{nome: $nome, peso: $peso, cor: $cor, sabor: $sabor, diasDesdeColheita: $diasDesdeColheita, isMadura: $isMadura}';
  }

  @override
  void assar() {
  print("colocar no forno")
  }

  @override
  void fazerMassa() {
    print("Misturar a $nome com farinha e açucar");
  }

  @override
  void separarIngredientes() {
    print("catar a $nome");
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  void printAlimento() {
    print("Este(a) $nome pesa $peso gramas e é $cor");
  }

  Alimento(this.nome, this.peso, this.cor);
}

class Legumes extends Alimento {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinha(){
    if(isPrecisaCozinhar){
      print("Pronto, o $nome está cozinhando!");
    }else{
      print("nem precisa cozinhar");
    }
      
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome,  double peso, String cor,String sabor,  int diasDesdeColheita,
       this.nivelAzedo)
      : super(nome,peso,cor,sabor , diasDesdeColheita);
  void existeRefri(bool existe){
    if(existe){
      print("Existe refri de $nome");
    }else{
      print("Nao Existe refri de $nome");
    }
  }
}

class Nozes extends Fruta{
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor,String sabor, int diasDesdeColheita,this.porcentagemOleoNatural)
      :super(nome,peso,cor,sabor,diasDesdeColheita);
  @override
  void fazerMassa(){
    print("Tirar casca");
    super.fazerMassa();
  }
}

int funcQuantosDiasMadura({required int dias}) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = dias - diasParaMadura;
  return quantosDiasFaltam;
}

funcToString(
    {required String nome,
    required double peso,
    required int diasDesdeColheita,
    required int diasParaMadura,
    required bool isMadura}) {
  print("nome:$nome\n "
      "peso:$peso\n"
      "diasDesdeColheita:$diasDesdeColheita \n"
      "diasParaMadura:$diasParaMadura\n"
      "isMadura:$isMadura");
}

// posicionais obrigatorios
void mostrarMadura(String nome, int dias) {
  if (dias >= 30) {
    print("A $nome esta madura");
  } else {
    print("A $nome não esta madura");
  }
}

//nomeados Opcionais
// não tem ordem
void mostrarMaduraComCor(String nome, int dias, {String? cor}) {
  if (dias >= 30) {
    print("A $nome esta madura");
  } else {
    print("A $nome não esta madura");
  }
  if (cor != null) {
    print("A $nome é $cor");
  }
}

// Parâmetros com "Padrão"
// se eu não passar o parametro cor ele vai com algo já setado a string "Sem Cor"
void mostrarMaduraComCorPadrao(String nome, int dias,
    {String cor = "sem cor"}) {
  if (dias >= 30) {
    print("A $nome esta madura");
  } else {
    print("A $nome não esta madura");
  }

  print("A $nome é $cor");
}

// Modificador "Require"
// torna-se um parametro necessario , você é obrigado a declarar e nomear
void mostrarMaduraComCorComRequire(String nome, int dias,
    {required String cor}) {
  if (dias >= 30) {
    print("A $nome esta madura");
  } else {
    print("A $nome não esta madura");
  }

  print("A $nome é $cor");
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

// classes abstratas tratam de conceitos e definem metodos a ser utilizados por classes objetos
abstract class Bolo {
    void separarIngredientes();
    void fazerMassa();
    void assar();
}










