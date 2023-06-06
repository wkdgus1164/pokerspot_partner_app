import 'package:dio/dio.dart';
import 'package:pokerspot_partner_app/data/models/store/biz_validate_request.dart';
import 'package:pokerspot_partner_app/data/network/api_client.dart';

class StoreRepository {
  final DioClient _dio;

  StoreRepository(this._dio);

  /// 사업자 등록번호 검증
  Future<String?> bizValidate(BizValidateRequestModel data) async {
    try {
      await _dio.post(
        '/stores/biz-validate',
        data: data.toJson(),
      );
      return null;
    } catch (e) {
      if (e is DioError) {
        return e.response?.data['message'];
      }
      rethrow;
    }
  }

  /// 매장 이미지 업로드
  Future<String?> uploadImage(List<int> binaryData) async {
    try {
      FormData formData = FormData.fromMap({
        'image': MultipartFile.fromBytes(binaryData, filename: 'image.jpg'),
      });
      final response = await _dio.post('/stores/upload-image',
          data: formData,
          options: Options(
            headers: {'Content-Type': 'multipart/form-data'},
          ));
      return response.data['url'];
    } catch (e) {
      return null;
    }
  }
}
