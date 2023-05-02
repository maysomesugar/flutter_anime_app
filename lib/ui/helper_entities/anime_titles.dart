class AnimeTitle {
  final String name;
  final int releaseYear;
  final int? durationMinutes;
  final int? episodesCount;
  final String posterUrl;
  final String? trailerUrl;
  final List<String> previewsUrl;

  AnimeTitle({
    this.episodesCount,
    required this.name,
    required this.releaseYear,
    this.durationMinutes,
    required this.posterUrl,
    this.trailerUrl,
    required this.previewsUrl,
  }) : assert((episodesCount == null) ^ (durationMinutes == null));
}

abstract class AnimeTitles {
  static final spiritedAway = AnimeTitle(
    name: 'Spirited Away',
    releaseYear: 2001,
    durationMinutes: 125,
    posterUrl:
        'https://i.pinimg.com/564x/69/31/cf/6931cf9dd2ba92644e0c3f7ea662cb4a.jpg',
    previewsUrl: [],
  );
  static final violetEvergarden = AnimeTitle(
    name: 'Violet Evergarden',
    releaseYear: 2018,
    episodesCount: 10,
    posterUrl:
        'https://i.pinimg.com/564x/c5/17/cc/c517cc0f8f22ddcb74580113b4ec2113.jpg',
    previewsUrl: [
      'https://c4.wallpaperflare.com/wallpaper/345/407/741/anime-violet-evergarden-violet-evergarden-anime-violet-evergarden-character-wallpaper-thumb.jpg',
      'https://m.media-amazon.com/images/M/MV5BMDhiY2QxMjQtZDc4Zi00ZWI5LTg3ZGEtZTg1ZWVhYzYzYzBhXkEyXkFqcGdeQTNwaW5nZXN0._V1_QL75_UY281_CR0,0,500,281_.jpg',
      'https://images.mubicdn.net/images/film/241382/cache-457184-1634583903/image-w1280.jpg',
    ],
  );
  static final hxh = AnimeTitle(
    name: 'Hunter X Hunter',
    releaseYear: 2011,
    episodesCount: 10,
    posterUrl:
        'https://i.pinimg.com/564x/b7/8e/f4/b78ef44c0e5f3f7d4f7106a222a621cd.jpg',
    previewsUrl: [],
  );
  static final myNeighborTotoro = AnimeTitle(
    name: 'My Neighbor Totoro',
    releaseYear: 1988,
    durationMinutes: 88,
    posterUrl:
        'https://i.pinimg.com/564x/0c/7a/5f/0c7a5fb657bcd7e6ece7fc887dc5b71e.jpg',
    previewsUrl: [],
  );
  static final demonSlayer = AnimeTitle(
    name: 'Demon Slayer',
    releaseYear: 2019,
    episodesCount: 10,
    posterUrl:
        'https://i.pinimg.com/564x/12/70/7b/12707be137636d106061db8761a7884f.jpg',
    previewsUrl: [],
  );
  static final dethNote = AnimeTitle(
    name: 'Deth Note',
    releaseYear: 2006,
    episodesCount: 10,
    posterUrl:
        'https://i.pinimg.com/564x/c4/39/d5/c439d5f10ef701b39e9f048320c81344.jpg',
    previewsUrl: [],
  );
  static final yourName = AnimeTitle(
    name: 'Your Name',
    releaseYear: 2016,
    durationMinutes: 112,
    posterUrl:
        'https://i.pinimg.com/564x/29/44/38/294438749313b158d58061a6d44236a2.jpg',
    previewsUrl: [],
  );
  static final naruto = AnimeTitle(
    name: 'Naruto',
    releaseYear: 2002,
    episodesCount: 720,
    posterUrl:
        'https://i.pinimg.com/564x/60/a3/c7/60a3c7a9d52e9af844a5904eec0d98b9.jpg',
    previewsUrl: [],
  );
  static final attackOnTitan = AnimeTitle(
    name: 'Attack On Titan',
    releaseYear: 2013,
    episodesCount: 90,
    posterUrl:
        'https://i.pinimg.com/564x/62/ff/55/62ff5535a58cab99b65e028b9d37aa66.jpg',
    previewsUrl: [],
  );
  static final silentVoice = AnimeTitle(
    name: 'A Silent Voice',
    releaseYear: 2016,
    durationMinutes: 129,
    posterUrl:
        'https://i.pinimg.com/564x/81/15/4b/81154be2a3f657a4742280ea6d31cb00.jpg',
    previewsUrl: [],
  );
}

final animeList = [
  AnimeTitles.attackOnTitan,
  AnimeTitles.demonSlayer,
  AnimeTitles.dethNote,
  AnimeTitles.hxh,
  AnimeTitles.myNeighborTotoro,
  AnimeTitles.naruto,
  AnimeTitles.silentVoice,
  AnimeTitles.spiritedAway,
  AnimeTitles.violetEvergarden,
  AnimeTitles.yourName,
];
