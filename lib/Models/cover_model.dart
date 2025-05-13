class CoverModel {
  final String image;
  final String name;

  CoverModel({
   required this.name,
   required this.image,
});

  static List<CoverModel> cover = [
    CoverModel(name: "Black Collection", image:"assets/cover/cover3.png"),
    CoverModel(name: "Hae By Hakim", image:"assets/cover/cover2.png"),
    CoverModel(name: "Bee Collection", image:"assets/cover/cover1.png"),

  ];
}