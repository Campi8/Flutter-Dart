import 'package:providers/domain/album.dart';
import 'package:providers/domain/music.dart';

List<Album> loadAlbums(){
  return <Album>[

    Album(
      artist: 'Artista 1',
      title: 'titulo 1',
       yearReleased: 2022,
        cover: 'assets/djonga.jpg',
         musics: <Music>[
          Music(title: 'Track1', number: 1, duration: '03:45'),
          Music(title: 'Track2', number: 2, duration: '03:23'),
          Music(title: 'Track3', number: 3, duration: '03:11'),
          Music(title: 'Track4', number: 4, duration: '03:33'),
      ],
    ),

        Album(
      artist: 'Artista 2',
      title: 'titulo 2',
       yearReleased: 2023,
        cover: 'assets/graduation.jpg',
         musics: <Music>[
          Music(title: 'Track1', number: 1, duration: '03:45'),
          Music(title: 'Track2', number: 2, duration: '03:23'),
          Music(title: 'Track3', number: 3, duration: '03:11'),
          Music(title: 'Track4', number: 4, duration: '03:33'),
      ],
    ),

        Album(
      artist: 'Artista 3',
      title: 'titulo 3',
       yearReleased: 2022,
        cover: 'assets/tyler.jpg',
         musics: <Music>[
          Music(title: 'Track1', number: 1, duration: '03:45'),
          Music(title: 'Track2', number: 2, duration: '03:23'),
          Music(title: 'Track3', number: 3, duration: '03:11'),
          Music(title: 'Track4', number: 4, duration: '03:33'),
      ],
    ),
    
    
  ];
}