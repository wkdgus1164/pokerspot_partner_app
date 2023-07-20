import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/tournament_admin/components/display_index/display_index.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/tournament_admin/components/tournaments/tournaments.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';
import 'package:provider/provider.dart';

import '../../../../../../locator.dart';
import '../../../../../providers/tournament_provider.dart';
import '../../../../../widgets/dialogs/info_dialog/information_dialog_utils.dart';

class TournamentAdminView extends StatelessWidget {
  const TournamentAdminView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('토너먼트 현황 변경')),
      body: SingleChildScrollView(
        child: ChangeNotifierProvider<TournamentProvider>(
          create: (_) => locator(),
          child: Consumer<TournamentProvider>(builder: (_, provider, __) {
            return Container(
              color: lightColorScheme.surface,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(padding16),
                    child: const Column(
                      children: [
                        TournamentAdminTournaments(),
                      ],
                    ),
                  ),
                  const CustomDivider(),
                  Container(
                    padding: const EdgeInsets.all(padding16),
                    child: const Column(
                      children: [
                        TournamentAdminDisplayIndex(),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(padding16),
                    child: SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: () async {
                          provider.updateGamePriority().then(
                            (value) {
                              if (value) {
                                Navigator.pop(context);
                              } else {
                                showInformationDialog(
                                  context: context,
                                  title: '변경 실패',
                                  content: '변경을 실패했습니다.',
                                  onConfirm: () {},
                                );
                              }
                            },
                          );
                        },
                        child: const Text('변경하기'),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
