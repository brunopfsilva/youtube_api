import 'package:flutter/material.dart';
import 'package:youtube_api/telas/EmAlta.dart';
import 'package:youtube_api/telas/Favorito.dart';
import 'package:youtube_api/telas/Inicio.dart';
import 'package:youtube_api/telas/Inscricao.dart';
import 'examples/apirequest.dart';


class MyApp extends StatelessWidget {
   

  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube api',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'Youtube api'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  
  final String title;



  int _indiceAtual = 0;


  List<Widget> telas = [
    Inicio(),
    EmAlta(),
    Inscricao(),
    Favorito()
  ];


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Image.asset("assets/images/youtube.png",width: 99,height: 21,),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: ()async{
            String res = await showSearch(context: context, delegate: null);
          },),
       /*   IconButton(icon: Icon(Icons.videocam),onPressed: (){},),
          IconButton(icon: Icon(Icons.account_circle),onPressed: (){},), */
        ],
      ),
      body: _body(),
      bottomNavigationBar: BottomNavigationBar(
        //define o tipo da barra bottom para fixo
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          index = widget._indiceAtual;
        },
        fixedColor: Colors.red,
        items: <BottomNavigationBarItem>
        
      [
        BottomNavigationBarItem(
          title: Text("Inicio"),
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          title: Text("Em alta"),
          icon: Icon(Icons.whatshot),
        ),
        BottomNavigationBarItem(
          title: Text("Inscrições"),
          icon: Icon(Icons.subscriptions),
        ),
        BottomNavigationBarItem(
          title: Text("Favoritos"),
          icon: Icon(Icons.favorite),
        ),
      ]
        
      ),
        
    );
  }


   _body() {
    return Container(
      padding: EdgeInsets.all(16),      
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         widget.telas[widget._indiceAtual],
        
        ],
      ),
    );
  }
}
