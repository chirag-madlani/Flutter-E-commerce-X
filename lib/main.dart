import 'package:flutter/material.dart';
import 'package:creativity_here/Model/GetX/Binding/initial_binding.dart';
import 'package:creativity_here/Model/GetX/Controller/duplicate_controller.dart';
import 'package:creativity_here/View/RootScreen/root.dart';
import 'package:creativity_here/View/IntroScreen/intro_screen.dart';
import 'package:creativity_here/ViewModel/Initial/initial.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'Model/Tools/JsonParse/product_parse.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox<ProductEntity>("FavoriteBox");
  await Hive.openBox<ProductEntity>("CartBox");

  WidgetsFlutterBinding.ensureInitialized();
  await HighPriorityInitial.initial();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {

    bool isFirst =
        Get.find<DuplicateController>().introFunctions.getLaunchStatus();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      title: 'Creativity here',
      home: isFirst
          ? const IntroScreen()
          : const RootScreen(
              index: 0,
            ),
    );
  }
}
