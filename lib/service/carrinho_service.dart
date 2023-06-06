import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:providers/domain/item_pedido.dart';
import 'package:providers/domain/produto.dart';
import 'package:providers/util/format.dart';

// "_" quer dizer que é privado

class Carrinho extends ChangeNotifier{
final List<ItemPedido> _items = [];

void addItem(Produto produto, int quantidade){

  if (_jaTemProduto(produto)) {
      //descobrir qual a posição da lista onde se encontra o produto
      final position = _items.indexWhere(findItemByProduto(produto));

      //alterando quantidade gerando um novo item e colocamos na mesma posição
      final item = _items[position];

      //sobrescrever o item que estava
      _items[position] = item.changeQuantity(item.quantidade + quantidade);

    notifyListeners();

      return;
  }

    notifyListeners();

    _items.add(ItemPedido(
      produto: produto,
      desconto: 0,
      preco: produto.preco,
      quantidade: quantidade,
    ));

}

bool _jaTemProduto(Produto produto){
  return _items.where(findItemByProduto(produto)).isNotEmpty;
}


bool Function(ItemPedido item) findItemByProduto(Produto produto){
  return (item) => item.produto.id == produto.id;
}

 List<ItemPedido> get items => _items;
 double get total => items.map((element) => element.total).reduce((value, element) => value + element);

  String get totalForatado => formatMoney(total);

  int get count => items.length;

}