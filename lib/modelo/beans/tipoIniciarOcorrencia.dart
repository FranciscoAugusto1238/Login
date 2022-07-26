class TipoIniciarOcorrencia{
  //necessário este interrogação para inserir valor nulo
  late int ?id;
  late String nome;
  late String descricao;

  // criando um construtor
  TipoIniciarOcorrencia(this.id, this.nome, this.descricao);

  TipoIniciarOcorrencia.map(dynamic obj) {
    this.id = obj['id'];
    this.nome = obj['nome'];
    this.descricao = obj['descricao'];
  }

  Map<String, dynamic> toMap() {
    var mapa = new Map<String, dynamic>();
    //mapa["id"] = id;
    mapa["nome"] = nome;
    mapa["descricao"] = descricao;

    if (id != null){
      mapa["id"] = id;
    }
    return mapa;
  }

  TipoIniciarOcorrencia.fromMap(Map<String, dynamic> mapa) {
    this.id = mapa['id'];
    this.nome = mapa['nome'];
    this.descricao = mapa['descricao'];
  }
}