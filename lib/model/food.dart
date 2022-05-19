import 'package:demoui/model/category.dart';

class Food{
  final String name;
  final double discount;
  final String description;
  final double price;
  final Category category;
  final String img;

  Food({required this.name, required this.discount, required this.description, required this.price, required this.category, required this.img});

}