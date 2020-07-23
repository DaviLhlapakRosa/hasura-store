import 'dart:convert';

class ProdutoModel {
  final String id;
  final String nome;
  final int valor;
  final TipoCategoriaDto categoriaProduto;
  final TipoCategoriaDto tipoProduto;

  ProdutoModel({
    this.id,
    this.nome,
    this.valor,
    this.categoriaProduto,
    this.tipoProduto,
  });

  factory ProdutoModel.fromRawJson(String str) => ProdutoModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProdutoModel.fromJson(Map<String, dynamic> json) => ProdutoModel(
    id: json["id"],
    nome: json["nome"],
    valor: json["valor"],
    categoriaProduto: TipoCategoriaDto.fromJson(json["categoria_produto"]),
    tipoProduto: TipoCategoriaDto.fromJson(json["tipo_produto"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nome": nome,
    "valor": valor,
    "categoria_produto": categoriaProduto.toJson(),
    "tipo_produto": tipoProduto.toJson(),
  };

  static List<ProdutoModel> fromJsonList(List list){
    if(list == null) return null;
    return list.map<ProdutoModel>((item)=>ProdutoModel.fromJson(item)).toList();
  }
}

class TipoCategoriaDto {
  final String descricao;

  TipoCategoriaDto({
    this.descricao,
  });

  factory TipoCategoriaDto.fromRawJson(String str) => TipoCategoriaDto.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TipoCategoriaDto.fromJson(Map<String, dynamic> json) => TipoCategoriaDto(
    descricao: json["descricao"],
  );

  Map<String, dynamic> toJson() => {
    "descricao": descricao,
  };
}
