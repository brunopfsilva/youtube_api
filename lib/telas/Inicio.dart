import 'package:flutter/material.dart';
import 'package:youtube_api/examples/apirequest.dart';
import 'package:youtube_api/model/video.dart';


class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

_listarVideos(){

Future<List<Video>> videos;

  Api api = Api();
  videos = api.pesquisarApi("pesquisa");

  return videos;

}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<Video>>(
        //metodo adicionado no futuro para que seja retornado os videos
        future: _listarVideos(),
        //snapshot é o resultado do future
        builder: (context,snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.none:
            case ConnectionState.waiting:
            Center(child: CircularProgressIndicator(),);
            break;

            case ConnectionState.active:
            case ConnectionState.done:
              if(snapshot.hasData){
                  ListView.separated(itemBuilder: (BuildContext context, int index) {
                    return Column(children: <Widget>[
                      
                    ],);
                  }, itemCount: snapshot.data.length, 
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      height: 3,
                      color: Colors.red,
                    );
                  },);
              }else {
                
                Center(child: Text("Não existem dados a ser exibido"),);

              }
            break;
            
          }
        },
        ),
    );
  }
}