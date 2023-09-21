import 'package:flutter_shop/data/datasources/flutter_shop_api_datasource.dart';
import 'package:flutter_shop/domain/models/settings_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class SettingsRepository {
  final FlutterShopApiDatasource flutterShopApiDatasource;

  SettingsRepository(this.flutterShopApiDatasource);

  Future<List<SettingsModel>> getComments() async {
    try {
      final response = await flutterShopApiDatasource.getComments();
      return response;
    } catch (e) {
      throw Exception('Failed to fetch comments: $e');
    }
  }
}
