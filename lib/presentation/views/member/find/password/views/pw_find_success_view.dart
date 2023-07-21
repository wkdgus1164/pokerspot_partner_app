import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/data/network/api_client.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';
import 'package:pokerspot_partner_app/locator.dart';
import 'package:pokerspot_partner_app/presentation/widgets/dialogs/info_dialog/information_dialog_utils.dart';
import 'package:pokerspot_partner_app/presentation/widgets/text_field/text_field_set.dart';

class PwFindSuccessView extends StatefulWidget {
  const PwFindSuccessView({super.key, required this.token});

  @override
  State<PwFindSuccessView> createState() => _PwFindSuccessViewState();

  final String token;
}

class _PwFindSuccessViewState extends State<PwFindSuccessView> {
  String _pw = '';
  String _confirmPw = '';
  String? _pwError;
  String? _confirmPwError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('비밀번호 변경')),
      body: Container(
        padding: const EdgeInsets.all(16),
        color: lightColorScheme.surface,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '신규 비밀번호를 설정해 주세요.',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 24),
            CustomTextFieldSet(
              inputLabel: '신규 비밀번호',
              captionText: '신규 비밀번호를 입력해 주세요.',
              inputHintText: '신규 비밀번호',
              onTextFieldChanged: (v) {
                _pw = v;
                setState(() {
                  if (_pw.isEmpty) {
                    return;
                  }
                  final passwordRegExp =
                      RegExp(r'^(?=.*[a-zA-Z])(?=.*[0-9])[a-zA-Z0-9]{4,12}$');
                  if (!passwordRegExp.hasMatch(_pw)) {
                    _pwError = '비밀번호 양식에 맞지 않습니다.';
                  }
                });
              },
              isPassword: true,
              inputErrorText: _pwError,
              maxLines: 1,
            ),
            const SizedBox(height: 24),
            CustomTextFieldSet(
              inputLabel: '신규 비밀번호 확인',
              captionText: '신규 비밀번호를 다시 한 번 입력해 주세요.',
              inputHintText: '신규 비밀번호 확인',
              onTextFieldChanged: (v) {
                _confirmPw = v;
                setState(() {
                  if (_pw != _confirmPw && _confirmPw.isNotEmpty) {
                    _confirmPwError = '입력하신 비밀번호와 다릅니다.';
                  } else {
                    _confirmPwError = null;
                  }
                });
              },
              inputErrorText: _confirmPwError,
              isPassword: true,
              maxLines: 1,
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () async {
                  await _updatePw().then((value) {
                    if (value) {
                      showInformationDialog(
                          context: context, content: '비밀번호가 변경되었습니다.');
                      Navigator.pop(context);
                    } else {
                      showInformationDialog(
                          context: context, content: '비밀번호가 변경을 실패하였습니다.');
                    }
                    return null;
                  });
                },
                child: const Text('비밀번호 변경하기'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> _updatePw() async {
    final dio = locator<DioClient>();
    try {
      await dio.post(
        '/partners/change-pwd',
        data: {'token': widget.token, 'password': _pw},
      );
      return true;
    } catch (e) {
      Logger.e(e);
      return false;
    }
  }
}
