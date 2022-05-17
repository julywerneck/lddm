import 'package:flutter/foundation.dart';

class Transacao {
  String? id;
  String? titulo;
  double? quantidade;
  DateTime? data;
  Transacao(
      {@required this.id,
      @required this.titulo,
      @required this.quantidade,
      @required this.data});
}
