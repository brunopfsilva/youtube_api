import 'package:flutter/material.dart';

class customSearchDelegate extends SearchDelegate<String>{
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          //o metodo query acessa o que é digitado
          query = "";
        },

      ),
      
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: (){
        //metodo close devolve um retorno a outra tela
        close(context, null);
      },);
  }

  @override
  Widget buildResults(BuildContext context) {
    //no query contem sempre o que é digitado
    close(context, query);
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }

}