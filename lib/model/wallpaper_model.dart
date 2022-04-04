class WallpaperModel {
  String photographer;
  String photographer_url;
  String photographer_id;

  SrcModel src;

  WallpaperModel(
      {required this.src,
      required this.photographer_id,
      required this.photographer,
      required this.photographer_url});
}

class SrcModel {
  String original;
  String small;
  String portrait;

  SrcModel(
      {required this.portrait, required this.original, required this.small});
}
