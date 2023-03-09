
void main() {
  escolherMeioDeTransporte2(Transporte.skate);
  Set<String> registrosvisitados = <String>{};
  registrosvisitados = registrarDestinos('sao paulo', registrosvisitados);
  print(registrosvisitados);
  registrosvisitados = registrarDestinos('rio', registrosvisitados);
  print(registrosvisitados);
  print(registrosvisitados.isEmpty);
  print(registrosvisitados.first);
  print(registrosvisitados.contains('sao paulo'));
  
  
  Map<String,dynamic> registrarPrecos = {};
  registrarPrecos['São Paulo'] = 1200;
  registrarPrecos['Rio de janeiro'] = 1990;
  registrarPrecos.remove('São Paulo');
  registrarPrecos['São Paulo'] = 'caro mas valido ';
  print(registrarPrecos);



  Pessoa usuario = Pessoa('Dandara', 13, true);
  print(usuario.toMap());

  // o var você coloca o tipo na hora da inicialização e nao na declaração , mas ele é estatico
  var meuNumero = 8.1;
  // meuNumero = "loucod";
  //Error: A value of type 'String' can't be assigned to a variable of type 'double'.
  //já no dynamic a historia é diferente pois em tempo de execução ele pode ser alterado
  print(meuNumero.runtimeType);
  dynamic meuNumero2= 2.3;
  meuNumero2 = "trespontoquatro";
  print(meuNumero2.runtimeType);

}
void escolherMeioDeTransporte(int locomocao) {
  if (locomocao == 0) {
    print('vou de Carro para aventura ');
  } else if (locomocao == 1) {
    print('Vou de bike para a aventura');
  } else {
    print('Vou para aventura');
  }
}
Set <String> registrarDestinos(String destino, Set<String> banco){

  banco.add(destino);
  return banco;
  }
void escolherMeioDeTransporte2(Transporte locomocao) {
  // if(locomocao == Transporte.carro){
  //   print('vou de Carro para aventura ');
  // }else if (locomocao == 1){
  //   print('Vou de bike para a aventura');
  // }else{
  //   print('Vou a aventura');
  // }
  switch (locomocao) {
    case Transporte.carro:
      print('vou de carro para a aventura');
      break;
    case Transporte.bike:
      print('vou de bike para a aventura');
      break;
    case Transporte.skate:
      print('vou  skate para a aventurae');
      break;
    case Transporte.aviao:
      print('vou aviao para a aventura');
      break;

    default:
      print('estou indo apra a aventura, isso que importa!');
  }
}
enum Transporte { carro, bike, andando, skate, aviao, patins }
// desafio do curso
class Pessoa{
  String nome;
  int idade;
  bool estaAutenticada;

  Pessoa(this.nome, this.idade, this.estaAutenticada);
  Map<String,dynamic> toMap(){
    Map<String,dynamic> pessoaMap = {};
    pessoaMap['nome'] = nome;
    pessoaMap['idade'] = idade;
    pessoaMap['estaAutenticada'] = estaAutenticada;
    return pessoaMap;
  }



}

class Viagem {

}