class ProductModel {
  final String image;
  final String name;
  final double price;
  final String description;
  ProductModel({
    required this.image,
    required this.name,
    required this.price,
    required this.description,
});

  static List<ProductModel> products = [
    ProductModel(
        image: "assets/product/product5.png",
        name: "October",
        price: 100,
        description: "reverible angora cardigan",
    ),
    ProductModel(
      image: "assets/product/product2.png",
      name: "October",
      price: 90,
      description: "reverible angora cardigan",
    ),
    ProductModel(
      image: "assets/product/product3.png",
      name: "October",
      price: 120,
      description: "reverible angora cardigan",
    ),
    ProductModel(
      image: "assets/product/product4.png",
      name: "October",
      price: 155,
      description: "reverible angora cardigan",
    ),
    ProductModel(
      image: "assets/product/product6.png",
      name: "October",
      price: 200,
      description: "reverible angora cardigan",
    ),
    ProductModel(
      image: "assets/product/product1.png",
      name: "October",
      price: 230,
      description: "reverible angora cardigan",
    ),

  ];
}