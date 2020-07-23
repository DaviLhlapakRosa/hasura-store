import 'package:hasura/app/modules/add_produto/models/tipo_categoria_produto_dto.dart';
import 'package:hasura/app/modules/update_produto/repositories/update_produto_repository.dart';
import 'package:mobx/mobx.dart';

part 'update_produto_controller.g.dart';

class UpdateProdutoController = _UpdateProdutoBase
    with _$UpdateProdutoController;

abstract class _UpdateProdutoBase with Store {
  final UpdateProdutoRepository repository;
  final String id;

  _UpdateProdutoBase(this.repository, this.id){
    repository.getProdutoTipoCategoriaProduto(id).then((value){
      tipoProdutoDto = value;
    });
  }

  @observable
  String descricao = '';

  @action
  setDescricao(String value) => descricao = value;

  @observable
  String valor = '';

  @action
  setValor(String value) => valor = value;

  @observable
  TipoCategoriaDto selectedCategoria;

  @action
  setSelectedCategoria(TipoCategoriaDto value) => selectedCategoria = value;

  @observable
  TipoCategoriaDto selectedTipo;

  @action
  setSelectedTipo(TipoCategoriaDto value) => selectedTipo = value;

  @observable
  TipoCategoriaProdutoDto tipoProdutoDto;

  @action
  Future<bool> salvar()async{
    if(descricao!=null&&valor!=null&&selectedTipo?.id!=null&&selectedCategoria?.id!=null){
      bool result = await addProdutoRepository.addProduto(
          descricao: descricao,
          valor: valor,
          categoria: selectedCategoria,
          tipo: selectedTipo
      );
      return result;
    }
    return false;
  }
}
