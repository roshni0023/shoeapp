class Shoe{
  final String name;
  final String price;
  final String imagePath;
  final String description;

  Shoe({required this.name, required this.price, required this.imagePath, required this.description});
}
List<Shoe> shoeShop =[
  Shoe(
    imagePath: "assets/image/blackshoe.png",
    name: "Diabetic SportsShoe",
    description: "Buy sports shoes, slippers, clogs, sneakers, formal shoes from Nike, Sparks, Red chief, Crocs and more at Amazon.in.",
    price: '240',
  ),
  Shoe(
    imagePath: "assets/image/redshoe.png",
    name: "Diabetic SportsShoe",
    description: "Orthopedic & Diabetic Sports Shoes Breathable Soft Sole Ultra-Lightweight Running/Walking Sports Shoes for Men's 722",
    price: '220',
  ),
  Shoe(
    imagePath: "assets/image/whiteshoe.png",
    name: "Diabetic SportsShoe",
    description: "HEALTH FIT Orthopedic & Diabetic Sports Shoes Breathable Soft Sole Ultra-Lightweight Running/Walking Sports Shoes for Men's 721BK-6 Black at Amazon.in",
    price: '190',
  ),
];