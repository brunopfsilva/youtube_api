class Video {
  String id;
  String titulo;
  String descricao;
  String imagem;
  String canal;

  Video({this.id, this.titulo, this.descricao, this.imagem, this.canal});

/*
//conversor de json em  objecto criando varias instancias do mesmo
static converterJson (Map<String,dynamic>json){
  return Video(
    id: json["id"]["videoId"],
        titulo: json["snippet"]["title"],
            imagem: json["snippet"]["thumbnails"]["hight"]["url"],
                canal: json["snippet"]["channelId"],
  );
} */
//modo correto de recuperar dados usando um factory que cria apenas uma instancia 
//convertendo assim dados vindo da api em um modelo do seu sistema nesse caso objeto Video
  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json["id"]["videoId"],
      titulo: json["snippet"]["title"],
      imagem: json["snippet"]["thumbnails"]["hight"]["url"],
      canal: json["snippet"]["channelId"],
    );
  }
}
