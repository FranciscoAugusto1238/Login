import 'package:login/modelo/bd/bd_core.dart';
import '../modelo/beans/iniciarOcorrencia.dart';

class CIniciarOcorrencia{

  Future<int> insert(IniciarOcorrencia g) async {
    int id = await BdCore.instance.insert(g.toMap(),BdCore.tableIniciarOcorrencia);
    print('linha inserida id: $id');
    return id;
  }
  Future<int> update(IniciarOcorrencia g) async {
    final linhasAfetadas = await BdCore.instance.update(g.toMap(),BdCore.tableIniciarOcorrencia);
    print('atualizadas $linhasAfetadas linha(s)');
    return linhasAfetadas;
  }
  Future<int> deletar(int id) async {
    //final id = await BdCore.instance.queryRowCount(BdCore.tableGasto);
    final linhaDeletada = await BdCore.instance.delete(id, BdCore.tableIniciarOcorrencia);
    print('Deletada(s) $linhaDeletada linha(s): linha $id');
    return linhaDeletada;
  }

  Future<List<Map<String, dynamic>>> getAll() async {
    final todasLinhas = await BdCore.instance.queryAllRows(BdCore.tableIniciarOcorrencia);
    print('Consulta todas as linhas:');
    todasLinhas.forEach((row) => print(row));
    return todasLinhas;
  }

  Future<List<IniciarOcorrencia>> getAllList() async {
    final todasLinhas = await BdCore.instance.queryAllRows(BdCore.tableIniciarOcorrencia);
    List<IniciarOcorrencia> lg = List.generate(todasLinhas.length, (i) {
      return IniciarOcorrencia(
          todasLinhas[i]['id'],
          todasLinhas[i]['tipo_iniciarocorrencia_id'],
          todasLinhas[i]['observacoes'],
          todasLinhas[i]['dataHora'],
          todasLinhas[i]['valor']
      );
    });
    return lg;
  }

  Future<IniciarOcorrencia> get(int id) async {
    String sql = ""
        "SELECT * "
        "FROM gasto "
        "WHERE id = $id;";
    final todasLinhas = await BdCore.instance.querySQL(sql);
    List<IniciarOcorrencia> lg = List.generate(todasLinhas.length, (i) {
      return IniciarOcorrencia(
          todasLinhas[i]['id'],
          todasLinhas[i]['tipo_iniciarocorrencia_id'],
          todasLinhas[i]['observacoes'],
          todasLinhas[i]['dataHora'],
          todasLinhas[i]['valor']
      );
    });
    late IniciarOcorrencia c;
    try {
      c = lg.elementAt(0);
    }catch(_){}
    return c;
  }
/*
  ///Select na tabela de pessoas fazendo join com a tabela de clientes,
  ///retornando a lista de todos os clientes tambem com as informações da tabela pessoa.
  Future<List<PessoaAmbulante>> getAllListAmbulante() async {
    String sql =
        "SELECT "
        " ambulante.id as id, "
        " pessoa.nome as nome, "
        " pessoa.sobrenome as sobrenome, "
        " pessoa.cpf as cpf, "
        " pessoa.observacao as observacao, "
        " ambulante.latitude as latitude, "
        " ambulante.longitude as longitude "

        "FROM "
        " pessoa INNER JOIN ambulante ON(pessoa.id = ambulante.pessoa_id);";

    final todasLinhas = await BdCore.instance.querySQL(sql);
    List<PessoaAmbulante> lc = List.generate(todasLinhas.length, (i) {
      return PessoaAmbulante(
          todasLinhas[i]['id'],
          todasLinhas[i]['nome'],
          todasLinhas[i]['sobrenome'],
          todasLinhas[i]['cpf'],
          todasLinhas[i]['obsevacao'],
          todasLinhas[i]['latitude'],
          todasLinhas[i]['longitude']
      );
    });
    return lc;
  }
*/
}
