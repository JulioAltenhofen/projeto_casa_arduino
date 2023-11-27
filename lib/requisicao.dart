import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

// ?ligarLuz ?apagarLuz ?maisLuz ?menosLuz
void get(List<String> arguments) async {
  var url = Uri.http(arguments[0], arguments[1], {'q': '{http}'});
  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    // var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
    print('Chamou a rota: ${arguments[1]}');
  } else {
    print('Request failed with status: ${response.statusCode}. ${arguments[1]}');
  }
}
