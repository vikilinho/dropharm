class Product {
  final String name;
  final String title;
  final String image;
  final double price;

  Product({this.name, this.price, this.title, this.image});
}

final List<Product> drug = [
  Product(
      name: "Asenen", title: "Cough syrup", price: 200, image: "images/a.png"),
  Product(
      name: "Folic Acid",
      title: "Digestion boaster",
      price: 250.0,
      image: "images/b.png"),
  Product(
      name: "Vitamin C",
      title: "immune boaster",
      price: 300.0,
      image: "images/c.png"),
  Product(
      name: "Vitamin A",
      title: "Essential nutrition",
      price: 250.0,
      image: "images/ef.png"),
  Product(
      name: "Benadryl",
      title: "Cough formula",
      price: 250.0,
      image: "images/bene.png"),
  Product(
      name: "Zedex",
      title: "Chloraphenamin",
      price: 150.0,
      image: "images/zedex.png"),
  Product(
      name: "Carotene",
      title: "Beta Carotene",
      price: 150.0,
      image: "images/f.png"),
  Product(
      name: "Kentax",
      title: "Nature 400 mcg",
      price: 100.0,
      image: "images/d.png"),
  Product(
      name: "Bex", title: "Women 400 mcg", price: 100.0, image: "images/c.png"),
  Product(
      name: "Vitamin B12",
      title: "Anemia Prevention ",
      price: 100.0,
      image: "images/ba.png"),
];
