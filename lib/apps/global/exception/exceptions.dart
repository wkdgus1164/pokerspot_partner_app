import 'package:pokerspot_partner_app/apps/global/exception/custom_exception.dart';

/// signup 중복 아이디 예외
class DuplicateIdentifierException extends CustomException {
  static const String error = 'DUPLICATE_IDENTIFIER';

  DuplicateIdentifierException({
    super.message = '이미 등록된 아이디에요.',
  });
}

/// signin 비밀번호 예외
class InvalidPasswordException extends CustomException {
  static const String error = 'INVALID_PASSWORD';

  InvalidPasswordException({
    super.message = '로그인 정보가 일치하지 않아요.',
  });
}

/// signin 아이디 예외
class PartnerNotFoundException extends CustomException {
  static const String error = 'PARTNER_NOT_FOUND';

  PartnerNotFoundException({
    super.message = '존재하지 않는 아이디에요.',
  });
}
