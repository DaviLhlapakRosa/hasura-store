// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$listaDeProdutosAtom = Atom(name: '_HomeBase.listaDeProdutos');

  @override
  List<ProdutoModel> get listaDeProdutos {
    _$listaDeProdutosAtom.context.enforceReadPolicy(_$listaDeProdutosAtom);
    _$listaDeProdutosAtom.reportObserved();
    return super.listaDeProdutos;
  }

  @override
  set listaDeProdutos(List<ProdutoModel> value) {
    _$listaDeProdutosAtom.context.conditionallyRunInAction(() {
      super.listaDeProdutos = value;
      _$listaDeProdutosAtom.reportChanged();
    }, _$listaDeProdutosAtom, name: '${_$listaDeProdutosAtom.name}_set');
  }
}
