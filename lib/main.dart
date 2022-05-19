import 'package:demoui/home/home_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      title: 'Flutter Demo',
      initialBinding: HomeBinding(),
      getPages: [
        GetPage(name: '/HomePage', page: ()=> HomePage(),binding: HomeBinding())
      ],
      home: HomePage()
    );
  }
}


