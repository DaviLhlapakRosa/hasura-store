import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hasura/app/modules/add_produto/models/tipo_categoria_produto_dto.dart';
import 'package:hasura/app/modules/update_produto/update_produto_controller.dart';
import 'package:hasura/app/modules/update_produto/update_produto_module.dart';
import 'package:hasura/app/shared/custom_combobox/custom_combobox_widget.dart';
import 'package:hasura/app/shared/widgets/label/label_widget.dart';

class UpdateProdutoPage extends StatefulWidget {
  final String title;
  const UpdateProdutoPage({Key key, this.title = "UpdateProduto"})
      : super(key: key);

  @override
  _UpdateProdutoPageState createState() => _UpdateProdutoPageState();
}

class _UpdateProdutoPageState extends State<UpdateProdutoPage> {

  UpdateProdutoController controller = UpdateProdutoModule.to.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(children: <Widget>[
        Positioned(
          top: MediaQuery.of(context).size.height - 250,
          right: -80,
          child: CircleAvatar(
            radius: 130,
            backgroundColor: Theme.of(context).primaryColor.withOpacity(.4),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height - 200,
          right: 50,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: Theme.of(context).primaryColor.withOpacity(.3),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height - 150,
          right: 150,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: Theme.of(context).primaryColor.withOpacity(.1),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
        ),
        Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                LabelWidget(
                  text: "Descrição",
                ),
                TextField(
                  onChanged: controller.setDescricao,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 18),
                  decoration: InputDecoration(
                    hintText: "Descrição do Produto",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                LabelWidget(
                  text: "Valor",
                ),
                TextField(
                  onChanged: controller.setValor,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 18),
                  decoration: InputDecoration(
                    hintText: "Descrição do Produto",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                LabelWidget(
                  text: "Categoria do Produto",
                ),
                Observer(
                  builder: (_){
                    if(controller.tipoProdutoDto == null){
                      return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border:
                              Border.all(color: Theme.of(context).primaryColor, width: 2)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CircularProgressIndicator(),
                              ),
                            ],
                          )
                      );
                    }

                    return CustomComboboxWidget(
                      itens: controller.tipoProdutoDto.categoriaProduto.map((data)=>Model(data.id,data.descricao)).toList(),
                      onChange: (item)=>controller.setSelectedCategoria(
                          TipoCategoriaDto(id: item.id,descricao: item.descricao)
                      ),
                      itemSelecionado: null,
                    );
                  },
                ),
                LabelWidget(
                  text: "Tipo do Produto",
                ),
                Observer(
                  builder: (_){
                    if(controller.tipoProdutoDto == null){
                      return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border:
                              Border.all(color: Theme.of(context).primaryColor, width: 2)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CircularProgressIndicator(),
                              ),
                            ],
                          )
                      );
                    }

                    return CustomComboboxWidget(
                      itens: controller.tipoProdutoDto.tipoProduto.map((data)=>Model(data.id,data.descricao)).toList(),
                      onChange: (item)=>controller.setSelectedTipo(
                          TipoCategoriaDto(id: item.id,descricao: item.descricao)
                      ),
                      itemSelecionado: null,
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: ()async {
                      bool result = await controller.salvar();
                      if(result){
                        Navigator.of(context).pop();
                      }else{
                        showDialog(context: context, child: AlertDialog(
                          content: Text("Erro ao tentar Salvar o Produto!"),
                          actions: <Widget>[
                            FlatButton(child: Text("Fechar"),onPressed: (){
                              Navigator.of(context).pop();
                            },)
                          ],
                        ));
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Salvar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
