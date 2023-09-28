import 'dart:io';
import 'dart:convert';

void main() {
  print("Informe seu peso separado por ponto");
  var line = stdin.readLineSync(encoding: utf8);
  var peso = double.parse(line == null ? "0" : line);

  print("Informe sua altura separado por ponto");
  line = stdin.readLineSync(encoding: utf8);
  var altura = double.parse(line == null ? "0" : line);

  print("Informe seu nome");
  line = stdin.readLineSync(encoding: utf8);
  var nome = line;

  var imc = peso / (2 * altura);

  if (imc < 16) {
    print("$nome Você tem Magreza Grave");
  } else if (imc >= 16 || imc < 17) {
    print("$nome Você tem Magreza moderada");
  } else if (imc >= 17 || imc < 18.5) {
    print("$nome Você tem Magreza leve");
  } else if (imc >= 18.5 || imc < 25) {
    print("$nome Você está Saudavél");
  } else if (imc >= 25 || imc < 30) {
    print("$nome Você está Sobrepeso");
  } else if (imc >= 30 || imc < 35) {
    print("$nome Você tem Obesidade Grau I");
  } else if (imc >= 35 || imc < 40) {
    print("$nome Você tem Obesidade Grau II (severa)");
  } else {
    print("$nome Você tem Obesidade Grau III (mórbida)");
  }
}
