import 'package:flutter/material.dart';

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
          IconButton(icon: Icon(Icons.search),onPressed: (){},),
          IconButton(icon: Icon(Icons.videocam),onPressed: (){},),
          IconButton(icon: Icon(Icons.account_circle),onPressed: (){},),
        ],
      ),
      body: _body(),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>
      [
        BottomNavigationBarItem(
          title: Text("Inicio"),
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          title: Text("Em alta"),
          icon: Icon(Icons.whatshot),
        ),
      ]
        
      ),
        
    );
  }

  Center _body() {
    return Center(
            
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
      
        ],
      ),
    );
  }
}
