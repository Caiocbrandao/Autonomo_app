import 'package:http/http.dart' as http;
import 'package:autonomo_app/models/result_cep.dart';

class ViaCepService {
  static Future fetchCep({String cep}) async {
    var response = await http.get('https://viacep.com.br/ws/$cep/json/');
    if (response.statusCode == 200) {
      print("ok");
      return ResultCep.fromJson(response.body);
    } else {
      print("miss");
      throw Exception('Requisição inválida!');
    }
  }
}
