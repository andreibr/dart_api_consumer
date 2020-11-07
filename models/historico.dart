import 'conta.dart';

class Historico {
  String id;
  int value;
  Conta conta;

  Historico(this.id, this.value, this.conta);

  Historico.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        value = json['value'],
        conta = Conta.fromJson(json['conta']);
}
