import 'package:demoui/home/home_controller.dart';
import 'package:demoui/model/category.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../model/food.dart';

class HomePage extends StatelessWidget {
  HomeController homeController = Get.put<HomeController>(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Material(
              color: Colors.white,
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.menu),
                        InkWell(
                          child: Row(
                            children: const [
                              Text('Entranga en: '),
                              Text(
                                'Peru 2',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.keyboard_arrow_down),
                            ],
                          ),
                        ),
                        Image.asset('assets/avartar.png'),
                      ],
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                          color:Colors.white,borderRadius: BorderRadius.circular(8),boxShadow: [
                        BoxShadow(color: Colors.grey.withOpacity(0.05),offset: Offset(0,1),blurRadius: 8),
                        BoxShadow(color: Colors.grey.withOpacity(0.05),offset: Offset(0,-1),blurRadius: 8),
                        BoxShadow(color: Colors.grey.withOpacity(0.05),offset: Offset(1,0),blurRadius: 8),
                        BoxShadow(color: Colors.grey.withOpacity(0.05),offset: Offset(-1,0),blurRadius: 8),
                      ]),
                      child: SizedBox(
                        height: 40,
                        child: TextField(
                          style: TextStyle(fontSize: 16),
                          decoration: InputDecoration(
                              hintText: 'Que quieres comer hoy?',
                              hintStyle: const TextStyle(color: Color(0xffcccddf), fontSize: 16),
                              prefixIcon: Image.asset('assets/search.png',scale: 0.8,),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              filled: true,
                              contentPadding: const EdgeInsets.all(0),
                              fillColor: Colors.white),
                          cursorColor: Color(0xffcccddf),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Categories'),
                        Text('Ofertas'),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.separated(
                        padding: EdgeInsets.only(left: 8,bottom: 8,top:8),
                        itemCount: homeController.listCategory.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => ItemCategory(
                          category: homeController.listCategory[index],
                        ), separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(height: double.infinity,width: 16,);
                      },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          Expanded(
            child: ListView.builder(

              itemCount:homeController.listFood.length ,
                itemBuilder: (context, index) => ItemListFood(
                      category: homeController.listCategory[index],
                      listFood: homeController.listFood[index],
                    )),
          )
          ],
        ),
      ),
    );
  }
}

class ItemCategory extends StatelessWidget {
  final Category category;

  const ItemCategory({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( height: 100,width: 70,decoration: BoxDecoration(
        color:Colors.white,borderRadius: BorderRadius.circular(8),boxShadow: [
      BoxShadow(color: Colors.grey.withOpacity(0.05),offset: Offset(0,1),blurRadius: 8),
      BoxShadow(color: Colors.grey.withOpacity(0.05),offset: Offset(0,-1),blurRadius: 8),
      BoxShadow(color: Colors.grey.withOpacity(0.05),offset: Offset(1,0),blurRadius: 8),
      BoxShadow(color: Colors.grey.withOpacity(0.05),offset: Offset(-1,0),blurRadius: 8),
    ]),);
  }
}

class ItemListFood extends StatelessWidget {
  final Category category;
  final List<Food> listFood;

  const ItemListFood({Key? key, required this.category, required this.listFood})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: listFood.length,
      itemBuilder: (context, index) => ItemFood(
        food: listFood[index],
      ),
    );
    // return ItemFood(food: listFood[1]);
  }
}

class ItemFood extends StatelessWidget {
  final Food food;

  const ItemFood({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        children: [
          Image.asset(food.img),
          Column(
            children: [
              Text(food.name),
              Text(food.description),
              Text(food.price.toString()),
            ],
          ),
          Image.asset('assets/shopping-cart.png'),
        ],
      ),
    );
  }
}
