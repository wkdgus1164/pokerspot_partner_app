import 'package:debounce_throttle/debounce_throttle.dart';
import 'package:flutter/foundation.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';
import 'package:pokerspot_partner_app/domain/entities/signup/signup_agreement.dart';
import 'package:pokerspot_partner_app/domain/usecases/signup_usecase.dart';

import '../../domain/entities/signup/signup_information.dart';

class SignupProvider with ChangeNotifier {
  final SignupUsecase _usecase;

  bool _isAllAgree = false;
  bool get isAllAgree => _isAllAgree;

  SignupAgreementModel _agreement = SignupAgreementModel();
  SignupAgreementModel get agreement => _agreement;

  SignupInformationModel _information = SignupInformationModel();
  SignupInformationModel get information => _information;

  bool _validateAgreement = false;
  bool get validateAgreement => _validateAgreement;

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

  void setIsAllAgree(bool value) {
    _isAllAgree = value;
    _agreement = agreement
      ..service = value
      ..privacy = value
      ..sensitivity = value;
    _setValidateAgreement();
  }

  void setAgreement(SignupAgreementModel agreement) {
    _agreement = agreement;
    _setValidateAgreement();
  }

  final updateBasketDebounce = Debouncer(
    const Duration(milliseconds: 200),
    initialValue: null,
    checkEquality: false,
  );

  void setId(String value) {
    _information.id = value;
    updateBasketDebounce.setValue(null);
    _setValidateInformation();
  }

  void setPassword(String value) {
    _information.password = value;
    _setValidateInformation();
  }

  void setCheckPassword(String value) {
    _information.checkPassword = value;
    _setValidateInformation();
  }

  void setEmail(String value) {
    _information.email = value;
    _setValidateInformation();
  }

  void setName(String value) {
    _information.name = value;
    _setValidateInformation();
  }

  void setPhoneNumber(String value) {
    _information.phoneNumber = value;
    _setValidateInformation();
  }

  void setImpUid(Map<String, String>? value) {
    _information.impUid = value?['imp_uid'] ?? '';
    _setValidateInformation();
  }

  Future<void> checkDuplicate() async {
    _checkedDuplicateId = await _usecase.checkDuplicate(information.id);
    Logger.d('[checkedDuplicateId] $checkedDuplicateId');
    _setValidateInformation();
  }

  Future<bool> checkPhoneNumber() async {
    _checkedPhoneNumber = await _usecase.checkPhoneNumber(
        phoneNumber: information.phoneNumber,
        name: information.name,
        impUid: information.impUid);
    _setValidateInformation();
    return checkedPhoneNumber;
  }

  void _setValidateAgreement() {
    _validateAgreement = _usecase.validateAgreement(agreement);
    notifyListeners();
  }

  void _setValidateInformation() {
    _validateInput =
        _usecase.validateInformation(information) && checkedDuplicateId;
    _validateConfirm = _validateInput && _checkedPhoneNumber;
    notifyListeners();
  }

  Future<String?> signUp() {
    return _usecase.signUp(information);
  }

  void reset() {
    _isAllAgree = false;
    _agreement = SignupAgreementModel();
    _information = SignupInformationModel();
    _validateAgreement = false;
    _checkedDuplicateId = true;
    _checkedPhoneNumber = false;
    _validateInput = false;
    _validateConfirm = false;
  }
}
