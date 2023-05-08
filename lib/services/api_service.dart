import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  var url = Uri.parse('https://api.waifu.im/');

  var response = await http.get(url);
  if (response.statusCode == 200) {
    // La solicitud fue exitosa, puedes procesar los datos de la respuesta aquí
    var data = response.body;
    print(data);
  } else {
    // La solicitud falló, puedes manejar el error aquí
    print('Error en la solicitud: ${response.statusCode}');
  }
}
