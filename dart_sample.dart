import 'dart:convert';

import 'package:dio/dio.dart' show Dio, Response;
import 'models/historico.dart';

void main() async {
  try {
    Response response = await Dio().get(
        "https://contas-flutter.herokuapp.com/api/contas/5f94a463028979840a0d38e6");
    //print(response.toString());
    String stringFinal = response.toString();
    Map historico = jsonDecode(stringFinal);
    var conta = Historico.fromJson(historico);

    print('ID:, ${conta.id}');
    print('Value:, ${conta.value}');
    print('Nome:, ${conta.conta.name}');
    print('Inst:, ${conta.conta.inst}');
    print('AG:, ${conta.conta.ag}');
    print('CC:, ${conta.conta.cc}');
    print('CPF:, ${conta.conta.cpf}');
    print('PUBLICO:, ${conta.conta.published}');
  } catch (e) {
    print(e);
  }
}
