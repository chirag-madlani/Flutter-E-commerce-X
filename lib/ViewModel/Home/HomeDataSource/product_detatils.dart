import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_application_ecommerce/Model/Tools/JsonParse/product_parse.dart';

abstract class Loadjson{

  static Future<void> readjson() async{
    final String response = await rootBundle.loadString('assets/details.json');
    final data = await json.decode(response);

  }
}
