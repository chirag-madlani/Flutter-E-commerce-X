import 'package:creativity_here/Model/Tools/Entities/entities.dart';
import 'package:creativity_here/ViewModel/Home/HomeDataSource/home_source.dart';
import 'package:creativity_here/ViewModel/Home/HomeRepository/home_repo.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeRepository homeRepositoryInstance = HomeRepository(
      dataSource: HomeRemoteDataSource(httpClient: HttpPackage().dio));
  HomeRepository get homeRepository => homeRepositoryInstance;
}
