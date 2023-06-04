import 'package:flutter/foundation.dart';
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

  bool? _checkedDuplicateId;
  bool? get checkedDuplicateId => _checkedDuplicateId;

  bool? _checkedPhoneNumber;
  bool? get checkedPhoneNumber => _checkedPhoneNumber;

  SignupProvider(this._usecase);

  void setId(String value) {
    _id = value;
    notifyListeners();
  }

  void setPassword(String value) {
    _password = value;
    notifyListeners();
  }

  void setCheckPassword(String value) {
    _checkPassword = value;
    notifyListeners();
  }

  void setEmail(String value) {
    _email = value;
    notifyListeners();
  }

  void setName(String value) {
    _name = value;
    notifyListeners();
  }

  void setPhoneNumber(String value) {
    _phoneNumber = value;
    notifyListeners();
  }

  Future<void> checkDuplicate() async {
    _checkedDuplicateId = await _usecase.checkDuplicate(id);
    notifyListeners();
  }

  Future<void> checkPhoneNumber() async {
    _checkedPhoneNumber = await _usecase.checkPhoneNumber(
      phoneNumber: phoneNumber,
      name: name,
    );
    notifyListeners();
  }

  Future<bool> signUp() {
    return _usecase.signUp(
        id, password, checkPassword, email, name, phoneNumber);
  }
}
