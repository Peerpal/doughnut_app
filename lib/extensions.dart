import 'package:flutter/widgets.dart';

extension CustomContext on BuildContext {
  double screenWidth([double percentage = 1]) =>
      MediaQuery.of(this).size.width * percentage;

  double screenHeight([double percentage = 1]) =>
      MediaQuery.of(this).size.height * percentage;
}

class SpaceX extends StatelessWidget {
  final double x;
  SpaceX(this.x);
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: this.x);
  }
}

class SpaceY extends StatelessWidget {
  final double y;
  SpaceY(this.y);
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: this.y);
  }
}

List<Map<String, dynamic>> doughnutList = [
  {
    "name": "Cream Filled",
    "image": "assets/doughnut2.png",
    "main-image": "assets/doughnut-main2.png",
    "tagline": "Topped with Chocolate",
    "price": "1.49",
    "rating": "3.8",
    "calories": "270",
    "fat": "14%",
    "salt": "3%",
    "sugar": "15g",
  },
  {
    "name": "BostonCream",
    "tagline": "Filled With Custard",
    "image": "assets/doughnut3.png",
    "main-image": "assets/doughnut-main3.png",
    "price": "1.09",
    "rating": "3.8",
    "calories": "270",
    "fat": "14%",
    "salt": "3%",
    "sugar": "15g",
  },
  {
    "name": "Cream Filled",
    "image": "assets/doughnut1.png",
    "main-image": "assets/doughnut-main1.png",
    "tagline": "Vanilla-Sprinkle",
    "price": "1.49",
    "rating": "3.8",
    "calories": "270",
    "fat": "14%",
    "salt": "3%",
    "sugar": "15g",
  },
  {
    "name": "BostonCream",
    "tagline": "Filled With Custard",
    "image": "assets/doughnut4.png",
    "main-image": "assets/doughnut-main4.png",
    "price": "1.09",
    "rating": "3.8",
    "calories": "270",
    "fat": "14%",
    "salt": "3%",
    "sugar": "15g",
  },
];
