// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _SignupApi implements SignupApi {
  _SignupApi(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<ApiResponse<SignupResponseDataDto>> signup(
      {required SignupInput input}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = input;
    final _options = _setStreamType<ApiResponse<SignupResponseDataDto>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/v1/partners/signup',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<SignupResponseDataDto> _value;
    try {
      _value = ApiResponse<SignupResponseDataDto>.fromJson(
        _result.data!,
        (json) => SignupResponseDataDto.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signupApiHash() => r'73e72d355d124ca8ebc1aa5478875a40e1359fe9';

/// SignupApi 프로바이더
///
/// SignupApi 인스턴스를 제공하는 Riverpod 프로바이더입니다.
/// [dioProvider]를 통해 Dio 인스턴스를 주입받아 SignupApi를 생성합니다.
///
/// Copied from [signupApi].
@ProviderFor(signupApi)
final signupApiProvider = AutoDisposeProvider<SignupApi>.internal(
  signupApi,
  name: r'signupApiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$signupApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SignupApiRef = AutoDisposeProviderRef<SignupApi>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
