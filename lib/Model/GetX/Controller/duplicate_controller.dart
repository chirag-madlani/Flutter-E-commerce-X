import 'package:flutter/foundation.dart';
import 'package:creativity_here/Model/Tools/Color/color.dart';
import 'package:creativity_here/Model/Tools/Entities/entities.dart';
import 'package:creativity_here/Model/Tools/Font/font.dart';
import 'package:creativity_here/Model/Tools/JsonParse/product_parse.dart';
import 'package:creativity_here/ViewModel/Cart/cart.dart';
import 'package:creativity_here/ViewModel/Cart/payment.dart';
import 'package:creativity_here/ViewModel/Intro/intro.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DuplicateController extends GetxController {
  final CustomColors colorsInstance = CustomColors();
  CustomColors get colors => colorsInstance;

  final CustomTextStyle textStyleInstance = CustomTextStyle();
  CustomTextStyle get textStyle => textStyleInstance;

  final UiDuplicate uiDuplicateInstance = UiDuplicate();
  UiDuplicate get uiDuplicate => uiDuplicateInstance;

  final IntroFunctions introFunctionsInstance = IntroFunctions();
  IntroFunctions get introFunctions => introFunctionsInstance;

  final CartFunctions cartFunctionsInstance = CartFunctions();
  CartFunctions get cartFunctions => cartFunctionsInstance;

  final PaymentFunctions paymentFunctionsInstance = PaymentFunctions();
  PaymentFunctions get paymentFunctions => paymentFunctionsInstance;

  late var cartBoxListenableInstance =
      Hive.box<ProductEntity>(cartFunctions.boxName).listenable();
  ValueListenable<Box<ProductEntity>> get cartBoxListenable =>
      cartBoxListenableInstance;
}
