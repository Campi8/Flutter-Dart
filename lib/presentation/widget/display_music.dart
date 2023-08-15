import 'package:flutter/material.dart';
import 'package:providers/domain/music.dart';

class DisplayMusic extends StatelessWidget {
  final Music music;
 
  const DisplayMusic({
    super.key,
    required this.music,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Material(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        elevation: 10,
        child: SizedBox(
          width: double.maxFinite,
          height: 80,
          child: Row(
            children: [
              Text(music.number.toString()),
              Expanded(
                child: Column(
                  children: [
                    Text(music.title),
                    Text(music.artist),
                  ],
                ),
              ),
              Text(music.duration),
            ],
          ),
        ),
      ),
    );
  }
}