import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/material.dart';

class CustomComboboxWidget extends StatelessWidget {
  final List<Model> itens;
  final Function(Model) onChange;
  final Model itemSelecionado;

  const CustomComboboxWidget(
      {Key key,
      @required this.itens,
      @required this.onChange,
      @required this.itemSelecionado})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FindDropdown<Model>(
      items: itens,
      onChanged: (Model item) => onChange(item),
      selectedItem: itemSelecionado,
      validate: (Model item) {
        if (item == null)
          return "Voce precisa selecionar um valor";
        else
          return null; //return null to "no error"
      },
      dropdownBuilder: (_, model) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border:
                  Border.all(color: Theme.of(context).primaryColor, width: 2)),
          child: model?.id == null
              ? ListTile(
                  title: Text(
                    "Selecione um Item",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                )
              : ListTile(
                  title: Text(
                    model.descricao,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ),
        );
      },
    );
  }
}

class Model {
  final String id;
  final String descricao;

  Model(this.id, this.descricao);

  @override
  String toString() => descricao.toString();

  @override
  // ignore: hash_and_equal
  operator ==(o) => o is Model && o.id == id;

  @override
  int get hashCode => id.hashCode * descricao.hashCode;
}
