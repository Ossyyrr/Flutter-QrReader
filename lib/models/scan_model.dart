import 'dart:convert';

ScannModel scannModelFromJson(String str) => ScannModel.fromJson(json.decode(str));
String scannModelToJson(ScannModel data) => json.encode(data.toJson());

class ScannModel {
  ScannModel({
    this.id,
    this.tipo,
    required this.valor,
  }) {
    if (valor.contains('http')) {
      tipo = 'http';
    } else {
      tipo = 'geo';
    }
  }

  int? id;
  String? tipo;
  String valor;

  factory ScannModel.fromJson(Map<String, dynamic> json) => ScannModel(
        id: json["id"],
        tipo: json["tipo"],
        valor: json["valor"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "tipo": tipo,
        "valor": valor,
      };
}
