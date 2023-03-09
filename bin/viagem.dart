import 'transporte.dart';

class Viagem {
  double dinheiro = 0;
  static String codigoPraAcessar = "alkjsfianmf";
  Transporte locomocao;
  Set<String> registrosvisitados = <String>{};
  Map<String,dynamic> registrarPrecos = {};
  int _locaisvisitados = 0;
  Viagem(this.dinheiro, this.locomocao);
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
  void visitar(String localVisita){

    registrosvisitados.add(localVisita);
    _locaisvisitados += 1;

  }
  void registrarPrecoVisita(String local, dynamic preco){
    registrarPrecos[local] = preco;
  }

  int get locaisvisitados => _locaisvisitados;

  void set alterarLocaisvisitados(int value) {
    if(value <10){
     _locaisvisitados += value; 
    }else{
      print('não é possivel');
    }
    
  }
}