import 'package:pokerspot_partner_app/apps/global/exception/custom_exception.dart';

/// signup 중복 아이디 예외
class DuplicateIdentifierException extends CustomException {
  static const String error = 'DUPLICATE_IDENTIFIER';

  DuplicateIdentifierException({
    super.message = '이미 등록된 아이디에요.',
  });
}
