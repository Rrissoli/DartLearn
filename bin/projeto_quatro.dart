
import 'transporte.dart';
import 'viagem.dart';

void main() {
Viagem viagemMaio = Viagem(1900.00, Transporte.carro);
viagemMaio.visitar('roma');
print(viagemMaio.locaisvisitados);
viagemMaio.alterarLocaisvisitados = 10;
print(viagemMaio.locaisvisitados);
}



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

