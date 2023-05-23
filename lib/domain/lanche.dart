//carrega os atributos do lanche
import 'package:intl/intl.dart';

final _moeda = NumberFormat.currency(
  locale: "pt_BR",
  symbol: "R\$",
);
// "_moeda quer dizer que ela é privada
//"final" quer dizer que não pode ser modificada"

class Lanche {
  final String nome;
  final String foto;
  final double preco;

  final List<String> ingredientes;

  Lanche({
    required this.nome,
    required this.foto,
    required this.preco,
    required this.ingredientes
  });

  get precoFormatado => _moeda.format(preco);

}