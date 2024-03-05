class CategoryModel {
  final String image;
  final String title;

  CategoryModel({required this.image, required this.title});
}

List<CategoryModel> CategoriesList = [
  CategoryModel(
    image: "images/pizza.jpeg",
    title: "Pizza",
  ),
  CategoryModel(
    image: "images/steak.jpg",
    title: "Steak",
  ),
  CategoryModel(
    image: "images/potato.jpeg",
    title: "Potato",
  ),
  CategoryModel(
    image: "images/burger.jpeg",
    title: "Burger",
  ),
];
