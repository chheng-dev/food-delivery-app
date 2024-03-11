class PupolarItemsModel {
  final String image;
  final String title;
  final String vendor;
  final int price;

  PupolarItemsModel(
      {required this.image,
      required this.title,
      required this.vendor,
      required this.price});
}

List<PupolarItemsModel> PopularItemsList = [
  PupolarItemsModel(
    image: "images/pop_1.jpeg",
    title: "Bread Bun",
    vendor: 'By KFC',
    price: 9,
  ),
  PupolarItemsModel(
    image: "images/pop_2.jpeg",
    title: "Bread & Coffee",
    vendor: 'By Chiken Star',
    price: 8,
  ),
  PupolarItemsModel(
    image: "images/pop_3.avif",
    title: "Bread",
    vendor: 'By Domino',
    price: 6,
  ),
  PupolarItemsModel(
    image: "images/feature_4.jpeg",
    title: "Burger",
    vendor: 'By KFC',
    price: 10,
  ),
];
