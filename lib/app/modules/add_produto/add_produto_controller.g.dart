// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_produto_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AddProdutoController on _AddProdutoBase, Store {
  final _$descricaoAtom = Atom(name: '_AddProdutoBase.descricao');

  @override
  String get descricao {
    _$descricaoAtom.context.enforceReadPolicy(_$descricaoAtom);
    _$descricaoAtom.reportObserved();
    return super.descricao;
  }

  @override
  set descricao(String value) {
    _$descricaoAtom.context.conditionallyRunInAction(() {
      super.descricao = value;
      _$descricaoAtom.reportChanged();
    }, _$descricaoAtom, name: '${_$descricaoAtom.name}_set');
  }

  final _$valorAtom = Atom(name: '_AddProdutoBase.valor');

  @override
  String get valor {
    _$valorAtom.context.enforceReadPolicy(_$valorAtom);
    _$valorAtom.reportObserved();
    return super.valor;
  }

  @override
  set valor(String value) {
    _$valorAtom.context.conditionallyRunInAction(() {
      super.valor = value;
      _$valorAtom.reportChanged();
    }, _$valorAtom, name: '${_$valorAtom.name}_set');
  }

  final _$selectedCategoriaAtom =
      Atom(name: '_AddProdutoBase.selectedCategoria');

  @override
  TipoCategoriaDto get selectedCategoria {
    _$selectedCategoriaAtom.context.enforceReadPolicy(_$selectedCategoriaAtom);
    _$selectedCategoriaAtom.reportObserved();
    return super.selectedCategoria;
  }

  @override
  set selectedCategoria(TipoCategoriaDto value) {
    _$selectedCategoriaAtom.context.conditionallyRunInAction(() {
      super.selectedCategoria = value;
      _$selectedCategoriaAtom.reportChanged();
    }, _$selectedCategoriaAtom, name: '${_$selectedCategoriaAtom.name}_set');
  }

  final _$selectedTipoAtom = Atom(name: '_AddProdutoBase.selectedTipo');

  @override
  TipoCategoriaDto get selectedTipo {
    _$selectedTipoAtom.context.enforceReadPolicy(_$selectedTipoAtom);
    _$selectedTipoAtom.reportObserved();
    return super.selectedTipo;
  }

  @override
  set selectedTipo(TipoCategoriaDto value) {
    _$selectedTipoAtom.context.conditionallyRunInAction(() {
      super.selectedTipo = value;
      _$selectedTipoAtom.reportChanged();
    }, _$selectedTipoAtom, name: '${_$selectedTipoAtom.name}_set');
  }

  final _$tipoProdutoDtoAtom = Atom(name: '_AddProdutoBase.tipoProdutoDto');

  @override
  TipoCategoriaProdutoDto get tipoProdutoDto {
    _$tipoProdutoDtoAtom.context.enforceReadPolicy(_$tipoProdutoDtoAtom);
    _$tipoProdutoDtoAtom.reportObserved();
    return super.tipoProdutoDto;
  }

  @override
  set tipoProdutoDto(TipoCategoriaProdutoDto value) {
    _$tipoProdutoDtoAtom.context.conditionallyRunInAction(() {
      super.tipoProdutoDto = value;
      _$tipoProdutoDtoAtom.reportChanged();
    }, _$tipoProdutoDtoAtom, name: '${_$tipoProdutoDtoAtom.name}_set');
  }

  final _$salvarAsyncAction = AsyncAction('salvar');

  @override
  Future<bool> salvar() {
    return _$salvarAsyncAction.run(() => super.salvar());
  }

  final _$_AddProdutoBaseActionController =
      ActionController(name: '_AddProdutoBase');

  @override
  dynamic setDescricao(String value) {
    final _$actionInfo = _$_AddProdutoBaseActionController.startAction();
    try {
      return super.setDescricao(value);
    } finally {
      _$_AddProdutoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setValor(String value) {
    final _$actionInfo = _$_AddProdutoBaseActionController.startAction();
    try {
      return super.setValor(value);
    } finally {
      _$_AddProdutoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSelectedCategoria(TipoCategoriaDto value) {
    final _$actionInfo = _$_AddProdutoBaseActionController.startAction();
    try {
      return super.setSelectedCategoria(value);
    } finally {
      _$_AddProdutoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSelectedTipo(TipoCategoriaDto value) {
    final _$actionInfo = _$_AddProdutoBaseActionController.startAction();
    try {
      return super.setSelectedTipo(value);
    } finally {
      _$_AddProdutoBaseActionController.endAction(_$actionInfo);
    }
  }
}
