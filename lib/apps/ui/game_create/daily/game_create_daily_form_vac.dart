import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokerspot_partner_app/apps/global/components/p_switch.dart';
import 'package:pokerspot_partner_app/apps/global/global.dart';

class GameCreateDailyFormVac extends StatelessWidget {
  const GameCreateDailyFormVac({
    super.key,
    required this.handleBuyInChange,
    required this.handleMinEntryChange,
    required this.handleMaxEntryChange,
    required this.handlePrizeRatioChange,
    required this.handleDurationChange,
    required this.handleFirstGameChange,
    required this.handleDailyGameChange,
    required this.isFirstGame,
    required this.isDailyGame,
  });

  final Function(String?) handleBuyInChange;
  final Function(String?) handleMinEntryChange;
  final Function(String?) handleMaxEntryChange;
  final Function(String?) handlePrizeRatioChange;
  final Function(String?) handleDurationChange;
  final Function(bool) handleFirstGameChange;
  final Function(bool) handleDailyGameChange;

  final bool isFirstGame;
  final bool isDailyGame;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 16),
        PTextField(
          labelText: '참가비(필수)',
          keyboardType: TextInputType.number,
          autofocus: true,
          hintText: '30만 이내의 참가비',
          handleChange: handleBuyInChange,
          endText: '만',
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^\d+')),
            TextInputFormatter.withFunction(
              (oldValue, newValue) => _approveOnlyRange(
                oldValue,
                newValue,
                30,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        PTextField(
          labelText: '최소 엔트리',
          keyboardType: TextInputType.number,
          hintText: '100만 이내의 최소 엔트리',
          handleChange: handleMinEntryChange,
          endText: '만',
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^\d+')),
            TextInputFormatter.withFunction(
              (oldValue, newValue) => _approveOnlyRange(
                oldValue,
                newValue,
                100,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        PTextField(
          labelText: '최대 엔트리',
          keyboardType: TextInputType.number,
          hintText: "입력하지 않으면 제한 없음",
          handleChange: handleMaxEntryChange,
          endText: '만',
        ),
        const SizedBox(height: 16),
        PTextField(
          labelText: '프라이즈 비율',
          keyboardType: TextInputType.number,
          hintText: "50% ~ 100% 사이의 비율",
          handleChange: handlePrizeRatioChange,
          endText: '%',
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^\d+')),
            TextInputFormatter.withFunction(
              (oldValue, newValue) => _approveOnlyRange(
                oldValue,
                newValue,
                100,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        PTextField(
          labelText: '듀레이션',
          keyboardType: TextInputType.number,
          hintText: "분 단위의 듀레이션",
          handleChange: handleDurationChange,
          endText: '분',
        ),
        const SizedBox(height: 16),
        PSwitch(
          isOn: isFirstGame,
          labelText: '첫 게임',
          handleChange: handleFirstGameChange,
        ),
        const SizedBox(height: 16),
        PSwitch(
          isOn: isDailyGame,
          labelText: '매일 진행',
          handleChange: handleDailyGameChange,
        ),
      ],
    );
  }

  TextEditingValue _approveOnlyRange(
    TextEditingValue oldValue,
    TextEditingValue newValue,
    int max,
  ) {
    if (newValue.text.isEmpty) {
      return newValue;
    }
    final int? value = int.tryParse(newValue.text);
    if (value != null && value <= max) {
      return newValue;
    }
    return oldValue;
  }
}
