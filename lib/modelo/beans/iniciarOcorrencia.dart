class IniciarOcorrencia{
  late int id;
  late int tipo_iniciarocorrencia_id;
  late String observacoes;
  late String dataHora;
  late double valor;

  // criando um construtor
  IniciarOcorrencia(this.id,this.tipo_iniciarocorrencia_id,this.observacoes,this.dataHora,this.valor);

  IniciarOcorrencia.map(dynamic obj) {
    this.id = obj['id'];
    this.tipo_iniciarocorrencia_id = obj['tipo_iniciarocorrencia_id'];
    this.observacoes = obj['observacoes'];
    this.dataHora = obj['dataHora'];
    this.valor = obj['valor'];
  }

  Map<String, dynamic> toMap() {
    var mapa = new Map<String, dynamic>();
    mapa["id"] = id;
    mapa["tipo_iniciarocorrencia_id"] = tipo_iniciarocorrencia_id;
    mapa["observacoes"] = observacoes;
    mapa["dataHora"] = dataHora;
    mapa["valor"] = valor;

    if (id != null){
      mapa["id"] = id;
    }
    return mapa;
  }

  IniciarOcorrencia.fromMap(Map<String, dynamic> mapa) {
    this.id = mapa['id'];
    this.tipo_iniciarocorrencia_id = mapa['tipo_iniciarocorrencia_id'];
    this.observacoes = mapa['observacoes'];
    this.dataHora = mapa['dataHora'];
    this.valor = mapa['valor'];
  }
}