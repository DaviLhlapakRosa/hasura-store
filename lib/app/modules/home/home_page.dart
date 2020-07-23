import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hasura/app/modules/home/home_controller.dart';
import 'package:hasura/app/modules/home/home_module.dart';
import 'package:hasura/app/modules/home/widgets/card_produto/card_produto_widget.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = HomeModule.to.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(
        builder: (BuildContext context) {
          return ListView.builder(
            itemCount: homeController.listaDeProdutos.length,
            itemBuilder: (BuildContext context, int index) {
              return CardProdutoWidget(
                nomeProduto: homeController.listaDeProdutos[index].nome,
                valor: homeController.listaDeProdutos[index].valor.toString(),
                categoriaProduto: homeController.listaDeProdutos[index].categoriaProduto.descricao,
                tipoProduto: homeController.listaDeProdutos[index].tipoProduto.descricao,
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context,"/addProduto");
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
