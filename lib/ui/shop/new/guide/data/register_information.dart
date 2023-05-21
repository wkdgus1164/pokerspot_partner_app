import 'package:pokerspot_partner_app/ui/shop/new/guide/models/register_information_model.dart';

List<RegisterInformationModel> contentList = [
  RegisterInformationModel(
    title: '사업자 인증',
    contents: ['사업자등록번호', '대표자명', '휴대폰 번호'],
    hint: '휴대폰 번호는 사업자등록번호에 기재된 대표자명과 일치해야 합니다.',
  ),
  RegisterInformationModel(
    title: '매장 기본정보',
    contents: ['매장명', '매장사진', '매장주소', '업태/종목'],
    hint: '',
  ),
  RegisterInformationModel(
    title: '매장 운영정보',
    contents: ['운영시간', '펍의 종류', '게임정보/혜택정보', '업태/종목'],
    hint: '',
  ),
];
