import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/presentation/widgets/produto_item_list.dart';
import 'package:providers/service/catalogo_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final catalogo = context.read<Catalogo>();
    final items = catalogo.withEstoque();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          buildAppBar(context),

          const SliverToBoxAdapter(
            child: SizedBox(
              height: 12,
            ),
          ),

            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => index < items.length ?
                ProdutoListItem(id: items[index].id) : null,
              ),
            ),

        ],
      ),
    );
  }


  Widget buildAppBar(BuildContext context) => SliverAppBar(
    title: const Text('NetSapatos'),
    centerTitle: true,
    floating: true,
    snap: true,

    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.shopping_cart),
         ),
      ],

  );
}