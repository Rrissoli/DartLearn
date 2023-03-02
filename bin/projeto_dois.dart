import 'dart:io';
void main() {
print("qual é sua idade");
  String? input = stdin.readLineSync();
if(input != null){
  int idade = int.parse(input);
  print("minha idade é $input");
  print("sua idade ano que vem será ${idade + 1}");
}


}
