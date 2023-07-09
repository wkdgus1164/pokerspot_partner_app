import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/tournament_admin/components/display_index/display_index.dart';
import 'package:pokerspot_partner_app/presentation/views/sections/home/tournament_admin/components/tournaments/tournaments.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/divider/divider.dart';

class TournamentAdminView extends StatelessWidget {
  const TournamentAdminView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('토너먼트 현황 변경')),
      body: SingleChildScrollView(
        child: Container(
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
                child: CustomFilledButton(
                  text: '변경하기',
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
