class SignupAgreementModel {
  bool service;
  bool privacy;
  bool sensitivity;
  bool push;
  bool marketing;
  bool event;

  SignupAgreementModel({
    this.service = false,
    this.privacy = false,
    this.sensitivity = false,
    this.push = false,
    this.marketing = false,
    this.event = false,
  });
}
