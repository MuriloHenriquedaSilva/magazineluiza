class Itens {
  String photo;
  String title;
  String specifications;
  String price;
  String plots;
  bool isFavorite;
  Itens({
    required this.photo,
    required this.title,
    required this.specifications,
    required this.price,
    required this.plots,
    this.isFavorite = false,
  });
}
