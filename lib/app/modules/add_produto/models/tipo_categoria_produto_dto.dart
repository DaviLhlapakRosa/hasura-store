import 'dart:convert';

class TipoCategoriaProdutoDto {
  final List<TipoCategoriaDto> tipoProduto;
  final List<TipoCategoriaDto> categoriaProduto;

  TipoCategoriaProdutoDto({
    this.tipoProduto,
    this.categoriaProduto,
  });

  factory TipoCategoriaProdutoDto.fromRawJson(String str) => TipoCategoriaProdutoDto.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TipoCategoriaProdutoDto.fromJson(Map<String, dynamic> json) => TipoCategoriaProdutoDto(
    tipoProduto: List<TipoCategoriaDto>.from(json["tipo_produto"].map((x) => TipoCategoriaDto.fromJson(x))),
    categoriaProduto: List<TipoCategoriaDto>.from(json["categoria_produto"].map((x) => TipoCategoriaDto.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "tipo_produto": List<dynamic>.from(tipoProduto.map((x) => x.toJson())),
    "categoria_produto": List<dynamic>.from(categoriaProduto.map((x) => x.toJson())),
  };

  static List<TipoCategoriaProdutoDto> fromJsonList(List list){
    if(list == null) return null;
    return list.map<TipoCategoriaProdutoDto>((item)=>TipoCategoriaProdutoDto.fromJson(item)).toList();
  }
}

class TipoCategoriaDto {
  final String id;
  final String descricao;

  TipoCategoriaDto({
    this.id,
    this.descricao,
  });

  factory TipoCategoriaDto.fromRawJson(String str) => TipoCategoriaDto.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TipoCategoriaDto.fromJson(Map<String, dynamic> json) => TipoCategoriaDto(
    id: json["id"],
    descricao: json["descricao"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "descricao": descricao,
  };
}
