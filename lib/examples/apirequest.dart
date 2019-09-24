import 'package:http/http.dart' as http;
import 'package:youtube_api/utils/common.dart';
import 'dart:convert';


class api {

  _recuperarCep() async {

    String url = "https://viacep.com.br/ws/04005020/json/";
    http.Response response;

    response = await http.get(url);
    Map<String, dynamic> retorno = json.decode( response.body );
    String logradouro = retorno["logradouro"];
    String complemento = retorno["complemento"];
    String bairro = retorno["bairro"];
    String localidade = retorno["localidade"];

    print(
      "Resposta logradouro: ${logradouro} complemento: ${complemento} bairro: ${bairro} "
    );

}

pesquisarApi(String pesquisar) async{

  http.Response response = await http.get(
    
    
    Common.urlbase +
    "search?part=snippet&type=video&maxResults=20&order=date&key=${Common.youtubeapi}");

}

}