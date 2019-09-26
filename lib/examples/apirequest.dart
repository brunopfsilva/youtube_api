import 'package:http/http.dart' as http;
import 'package:youtube_api/model/video.dart';
import 'package:youtube_api/utils/common.dart';
import 'dart:convert';


class Api {

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

pesquisarApi(String pesquisa) async{

  http.Response response = await http.get(
    
    
    Common.urlbase +
    "search?part=snippet&type=video&maxResults=20&order=date&key=${Common.youtubeapi}&q=$pesquisa"
    
    
    );


  if(response.statusCode == 200){


    Map<String,dynamic>dadosJson = json.decode(response.body);
    print("resultado: "+dadosJson["items"][0].toString());
    
    /* utilizar o .map para percorrer e adicionar os objectos recuperados da api */

    List<Video>videos = dadosJson["items"].map<Video>(
      (map){
        //convert map em objecto do tipo video
        return Video.fromJson(map);
      }
      //convert processamento map em lista
    ).toList();

    /*for( var video in dadosJson["items"]){
      print("Resultado: "+video.toString());
    }*/

  }else {

  }

}




}