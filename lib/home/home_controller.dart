import 'package:demoui/data/fakedata.dart';
import 'package:demoui/model/category.dart';
import 'package:get/get.dart';

import '../model/food.dart';

class HomeController extends GetxController {
  var itemCategorySelected = 0.obs;
  final fakeData = FakeData();
  final listCategory = List.empty(growable: true);
  List<Food> listPizza = List.empty(growable: true);
  List<Food> listBurger = List.empty(growable: true);
  List<List<Food>> listFood = List.empty(growable: true);
  final listSelectedFood = List.empty(growable: true);

  @override
  void onInit() {
    listCategory.addAll(fakeData.categories);
    listPizza.addAll(fakeData.pizzaes);
    listBurger.addAll(fakeData.burgeres);

    listFood = [
      listPizza,
      listBurger
    ];
  }

}
