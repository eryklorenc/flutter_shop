import 'package:dio/dio.dart';
import 'package:flutter_shop/domain/models/settings/settings_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'flutter_shop_api_datasource.g.dart';

@injectable
@RestApi()
abstract class FlutterShopApiDatasource {
  @factoryMethod
  factory FlutterShopApiDatasource(Dio dio) = _FlutterShopApiDatasource;

  @GET('/posts/1/comments')
  Future<List<SettingsModel>> getComments();
}
