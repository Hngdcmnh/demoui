import '../model/category.dart';
import '../model/food.dart';

class FakeData{
  final categories = [
    Category(name: 'Pizzas',img: 'assets/007-pizza.png'),
    Category(name: 'Burger',img: 'assets/029-burger.png'),
    Category(name: 'Sandwich',img: 'assets/013-sandwich.png'),
    Category(name: 'Desayuno',img: 'assets/010-desayuno.png'),
    Category(name: 'Brocheta',img: 'assets/016-brocheta.png')
  ];

  final pizzaes =[
      Food(name: 'Big pizza',discount: 0,description: 'Delicious',price: 200.0,category: Category(name: 'Pizzas',img: 'assets/007-pizza.png'),img: 'assets/big-pizza.png'),
      Food(name: 'Big pizza',discount: 0,description: 'Delicious',price: 200.0,category: Category(name: 'Pizzas',img: 'assets/007-pizza.png'),img: 'assets/big-pizza.png'),
      Food(name: 'Big pizza',discount: 0,description: 'Delicious',price: 200.0,category: Category(name: 'Pizzas',img: 'assets/007-pizza.png'),img: 'assets/big-pizza.png'),
      Food(name: 'Big pizza',discount: 0,description: 'Delicious',price: 200.0,category: Category(name: 'Pizzas',img: 'assets/007-pizza.png'),img: 'assets/big-pizza.png'),
      Food(name: 'Big pizza',discount: 0,description: 'Delicious',price: 200.0,category: Category(name: 'Pizzas',img: 'assets/007-pizza.png'),img: 'assets/big-pizza.png'),
      Food(name: 'Big pizza',discount: 0,description: 'Delicious',price: 200.0,category: Category(name: 'Pizzas',img: 'assets/007-pizza.png'),img: 'assets/big-pizza.png'),
      Food(name: 'Big pizza',discount: 0,description: 'Delicious',price: 200.0,category: Category(name: 'Pizzas',img: 'assets/007-pizza.png'),img: 'assets/big-pizza.png'),
  ];

  final burgeres  = [
    Food(name: 'Big burger',discount: 0,description: 'Delicious +1',price: 250.0,category: Category(name: 'Burger',img: 'assets/029-burger.png'),img: 'assets/big-burger.png'),
    Food(name: 'Big burger',discount: 0,description: 'Delicious +2',price: 250.0,category: Category(name: 'Burger',img: 'assets/029-burger.png'),img: 'assets/big-burger.png'),
    Food(name: 'Big burger',discount: 0,description: 'Delicious +3',price: 250.0,category: Category(name: 'Burger',img: 'assets/029-burger.png'),img: 'assets/big-burger.png'),
  ];


}