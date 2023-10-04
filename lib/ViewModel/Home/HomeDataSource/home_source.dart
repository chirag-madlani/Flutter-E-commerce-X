import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart' ;
import 'package:creativity_here/Model/Tools/JsonParse/product_parse.dart';
import 'package:get/get.dart';

abstract class HomeDataSource {
  Future<List<ProductEntity>> getProducts();
  Future<List<ProductEntity>> getProductsWithKeyWord(
      {required String keyWord});
}

class HomeRemoteDataSource implements HomeDataSource {
  final Dio httpClient;

  HomeRemoteDataSource({required this.httpClient});
  @override
  Future<List<ProductEntity>> getProducts() async {
    //final response = await httpClient.get("https://makeup-api.herokuapp.com/api/v1/products.json?brand=covergirl");
   final response = await rootBundle.loadString('assets/details.json');
   final data= json.decode(response) ;
   final List<ProductEntity> productList = [];
     for (var product in (data) as List) {
      productList.add(ProductEntity.fromJson(product));
     }
    return productList;
  }

  @override
  Future<List<ProductEntity>> getProductsWithKeyWord(
      {required String keyWord}) async {

    final response = await rootBundle.loadString('assets/details.json');
    final List<ProductEntity> productList = [];
    final data=json.decode(response);
    if (data.isNotEmpty) {
      for (var element in data) {
        productList.add(ProductEntity.fromJson(element));
      }
    }
    return productList;
  }
}