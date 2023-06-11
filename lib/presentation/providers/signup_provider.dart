import 'package:debounce_throttle/debounce_throttle.dart';
import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';
import 'package:pokerspot_partner_app/domain/usecases/signup_usecase.dart';

class SignupProvider with ChangeNotifier {
  final SignupUsecase _usecase;

  String _id = '';
  String get id => _id;

  String _password = '';
  String get password => _password;

  String _checkPassword = '';
  String get checkPassword => _checkPassword;

  String _email = '';
  String get email => _email;

  String _name = '';
  String get name => _name;

  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;

  String _impUid = '';
  String get impUid => _impUid;

  bool _checkedDuplicateId = true;
  bool get checkedDuplicateId => _checkedDuplicateId;

  bool _checkedPhoneNumber = false;
  bool get checkedPhoneNumber => _checkedPhoneNumber;

  bool _validateInput = false;
  bool get validateInput => _validateInput;

  bool _validateConfirm = false;
  bool get validateConfirm => _validateConfirm;

  SignupProvider(this._usecase) {
    updateBasketDebounce.values.listen((state) {
      checkDuplicate();
    });
  }

  @override
  void dispose() {
    updateBasketDebounce.cancel();

    super.dispose();
  }

  final updateBasketDebounce = Debouncer(
    const Duration(milliseconds: 200),
    initialValue: null,
    checkEquality: false,
  );

  void setId(String value) {
    _id = value;
    updateBasketDebounce.setValue(null);
    validateButton();
  }

  void setPassword(String value) {
    _password = value;
    validateButton();
  }

  void setCheckPassword(String value) {
    _checkPassword = value;
    validateButton();
  }

  void setEmail(String value) {
    _email = value;
    validateButton();
  }

  void setName(String value) {
    _name = value;
    validateButton();
  }

  void setPhoneNumber(String value) {
    _phoneNumber = value;
    validateButton();
  }

  void setImpUid(Map<String, String>? value) {
    _impUid = value?['imp_uid'] ?? '';
    validateButton();
  }

  Future<void> checkDuplicate() async {
    _checkedDuplicateId = await _usecase.checkDuplicate(id);
    Logger.d('[checkedDuplicateId] $checkedDuplicateId');
    validateButton();
  }

  Future<bool> checkPhoneNumber() async {
    _checkedPhoneNumber = await _usecase.checkPhoneNumber(
        phoneNumber: phoneNumber, name: name, impUid: impUid);
    validateButton();
    return checkedPhoneNumber;
  }

  void validateButton() {
    _validateInput = _id.isNotEmpty &&
        password.isNotEmpty &&
        checkPassword.isNotEmpty &&
        phoneNumber.isNotEmpty &&
        name.isNotEmpty &&
        checkedDuplicateId;
    _validateConfirm = _validateInput && _checkedPhoneNumber;
    notifyListeners();
  }

  Future<String?> signUp() {
    return _usecase.signUp(
        id, password, checkPassword, email, name, phoneNumber, impUid);
  }
}
