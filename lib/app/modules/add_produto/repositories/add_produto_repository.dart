import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura/app/modules/add_produto/models/tipo_categoria_produto_dto.dart';
import 'package:hasura_connect/hasura_connect.dart';

class AddProdutoRepository extends Disposable {
  final HasuraConnect _hasuraConnect;

  AddProdutoRepository(this._hasuraConnect);

  Future<TipoCategoriaProdutoDto> getTipoCategoriaProduto() async {
    var query = '''
      query getTipoCategoriaProduto {
        tipo_produto {
          id
          descricao
        }
        categoria_produto {
          id
          descricao
        }
      }
    ''';

    var snapshot = await _hasuraConnect.query(query);

    return TipoCategoriaProdutoDto.fromJson(snapshot["data"]);
  }

  Future<bool> addProduto(
      {String descricao,
      String valor,
      TipoCategoriaDto categoria,
      TipoCategoriaDto tipo}) async {
    var mutation = '''
      mutation addProduto(\$nome: String, \$categoria: uuid, \$tipo: uuid, \$valor: float8) {
        insert_produto(objects: {nome: \$nome, categoria_produto_id: \$categoria, tipo_produto_id: \$tipo, valor: \$valor}) {
          affected_rows
        }
      }
    ''';

    var snapshot = await _hasuraConnect.mutation(mutation, variables: {
      "nome": descricao,
      "categoria": categoria.id,
      "tipo": tipo.id,
      "valor": valor
    });

    return snapshot["data"]["insert_produto"]["affected_rows"] > 0;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
