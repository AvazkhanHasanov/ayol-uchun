import 'package:ayol_uchun/core/utils/result.dart';
import 'package:ayol_uchun/data/models/base_model.dart';
import '../../../core/client.dart';

class BaseRepository {
  final ApiClient _apiClient;

  BaseRepository(this._apiClient);

  Future<Result<List<BaseModel>>> getCityList() async {
    final result = await _apiClient.get<List>('/base/city/list/');
    return result.fold(
      (error) => Result.error(error),
      (data) => Result.ok(data.map((e) => BaseModel.fromJson(e)).toList()),
    );
  }

  Future<Result<List<BaseModel>>> getCountryList() async {
    final result = await _apiClient.get<List>('/base/country/list/');
    return result.fold(
      (error) => Result.error(error),
      (data) => Result.ok(data.map((e) => BaseModel.fromJson(e)).toList()),
    );
  }

  Future<Result<List<BaseModel>>> getRegionList() async {
    final result = await _apiClient.get<List>('/base/region/list/');
    return result.fold(
      (error) => Result.error(error),
      (data) => Result.ok(data.map((e) => BaseModel.fromJson(e)).toList()),
    );
  }
}
