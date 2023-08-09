import 'package:flutter/material.dart';
import 'package:providers/domain/album.dart';

class DisplayAlbum extends StatelessWidget {
// parametros
  final double width;
  final double height;
  final Album album;

//se nao houver declaração vai vir padrao 200
  const DisplayAlbum({
    super.key,
    this.width = 200,
    this.height = 200,
    required this.album,
    });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.all(10),

      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            
            Expanded(
              child: Image.asset(
              album.cover,
              height: double.maxFinite,
              width: double.maxFinite,
              fit: BoxFit.fill,
              ),
            ),

            Text(album.artist, style: theme.textTheme.titleLarge,),
            Text(album.title, style: theme.textTheme.titleSmall,)
          ],
        ),
      ),
    );
  }
}