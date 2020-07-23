import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:hasura/app/modules/update_produto/update_produto_controller.dart';
import 'package:hasura/app/modules/update_produto/update_produto_module.dart';

void main() {
  initModule(UpdateProdutoModule());
  UpdateProdutoController updateproduto;

  setUp(() {
    updateproduto = UpdateProdutoModule.to.get<UpdateProdutoController>();
  });

  group('UpdateProdutoController Test', () {
    test("First Test", () {
      expect(updateproduto, isInstanceOf<UpdateProdutoController>());
    });

    test("Set Value", () {
      expect(updateproduto.value, equals(0));
      updateproduto.increment();
      expect(updateproduto.value, equals(1));
    });
  });
}
