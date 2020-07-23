import 'package:hasura/app/modules/update_produto/repositories/update_produto_repository.dart';
import 'package:hasura/app/modules/update_produto/update_produto_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura/app/modules/update_produto/update_produto_page.dart';

class UpdateProdutoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => UpdateProdutoRepository()),
        Bind((i) => UpdateProdutoController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => UpdateProdutoPage()),
      ];

  static Inject get to => Inject<UpdateProdutoModule>.of();
}
