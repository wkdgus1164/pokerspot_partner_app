import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/common/routes/base/shop.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/data/models/store/create_store_request.dart';
import 'package:pokerspot_partner_app/data/utils/logger.dart';
import 'package:pokerspot_partner_app/presentation/dialog/toast.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/components/steps.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/game/components/add_button.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/game/components/game_item.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/button/custom_outlined_button.dart';
import 'package:pokerspot_partner_app/presentation/widgets/info_box/info_box.dart';
import 'package:provider/provider.dart';

import '../../../../../../../locator.dart';
import '../../../../../../providers/create_store_provider.dart';
import '../../../../../../providers/home_provider.dart';

class ShopProcessGameView extends StatefulWidget {
  const ShopProcessGameView({super.key});

  @override
  State<ShopProcessGameView> createState() => _ShopProcessGameViewState();
}

class _ShopProcessGameViewState extends State<ShopProcessGameView> {
  final _provider = locator<CreateStoreProvider>();
  late final ScrollController _scrollController;

  List<MttGameModel> get _games => _provider.mttGames;

  void _addGame() {
    _provider.addGame();
    Future.delayed(const Duration(milliseconds: 50)).then((value) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeOutCubic,
      );
    });
  }

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        theme: CustomAppBarTheme.light,
        left: Icons.keyboard_arrow_left_rounded,
        text: '신규 매장 등록',
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Container(
                  color: lightColorScheme.surface,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: padding16,
                          right: padding16,
                          top: padding16,
                          bottom: padding32,
                        ),
                        child: Consumer<CreateStoreProvider>(
                            builder: (_, __, ___) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const ShopProcessSteps(index: 5),
                              const SizedBox(height: padding16),
                              Text(
                                '게임 정보',
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                              const SizedBox(height: padding10),
                              Text(
                                '최소 1개의 토너먼트 목록을 작성해주세요.',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              const SizedBox(height: padding10),
                              const InfoBox(
                                boxColor: BoxColor.blue,
                                text: '모든 참가비의 단위는 chip입니다.',
                              ),
                              const SizedBox(height: padding24),
                              Text(
                                '토너먼트',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(height: padding10),

                              // 추가하기 버튼
                              GameAddButton(onPressed: () {
                                _addGame();
                              }),
                              ...List.generate(
                                _games.length,
                                (index) => _buildGame(index),
                              ),
                            ],
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            _buildNextButton(context),
          ],
        ),
      ),
    );
  }

  Container _buildNextButton(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: padding16,
        left: padding16,
        right: padding16,
        bottom: padding32,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomOutlinedButton(
              text: '이전',
              theme: CustomOutlinedButtonTheme.secondary,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          const SizedBox(width: padding16),
          Expanded(
            child: CustomFilledButton(
              text: '완료',
              theme: CustomFilledButtonTheme.primary,
              onPressed: () async {
                if (!_provider.validateGame()) {
                  showToast(context: context, message: '게임 정보를 모두 입력해주세요.');
                  return;
                }
                final result = await _provider.createStore();
                await locator<HomeProvider>().getStores();
                if (mounted) {
                  if (result) {
                    if (mounted) {
                      context.pushNamed(
                        ShopRoutes.processSuccess.path,
                      );
                    }
                  }
                } else {
                  showToast(context: context, message: '다시 시도해주세요.');
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  String setTitle(int index, List<MttGameModel> games) {
    switch (games[index].type) {
      case TonerType.daily:
        return '${games[index].entryPrice ~/ 10000}만 데일리 토너먼트';
      case TonerType.seed:
        return '${games[index].entryPrice ~/ 10000}만 시드권 토너먼트';
      case TonerType.gtd:
        return '${games[index].entryPrice ~/ 10000}만 GTD 토너먼트';
    }
  }

  Widget _buildGame(int index) {
    return GameItem(
      title: setTitle(index, _games),
      isAllDayRunning: _games[index].isDaily,
      tonerType: _games[index].type,
      onTonerTypeChanged: (value) {
        Logger.d(_games[index].toJson());
        _provider.setGame(
          index: index,
          model: _games[index].copyWith(
            type: value == 0 ? TonerType.daily : TonerType.seed,
          ),
        );
      },
      onAllDayRunningChanged: () {
        _provider.setGame(
          index: index,
          model: _games[index].copyWith(
            isDaily: !_games[index].isDaily,
          ),
        );
      },
      joinCost: _games[index].entryPrice,
      onJoinCostInputChanged: (value) {
        _provider.setGame(
          index: index,
          model: _games[index].copyWith(
            entryPrice: value,
          ),
        );
      },
      entryStart: _games[index].entryMin,
      onEntryStartInputChanged: (value) {
        _provider.setGame(
          index: index,
          model: _games[index].copyWith(
            entryMin: int.tryParse(value) ?? 0,
          ),
        );
      },
      entryLimit: _games[index].entryMax,
      onEntryLimitInputChanged: (value) {
        _provider.setGame(
          index: index,
          model: _games[index].copyWith(
            entryMax: int.tryParse(value) ?? 0,
          ),
        );
      },
      prize: _games[index].prize,
      targetToner: _games[index].targetMttName,
      onTargetTonerInputChanged: (value) {
        _provider.setGame(
          index: index,
          model: _games[index].copyWith(targetMttName: value),
          notify: false,
        );
        Logger.d(_provider.mttGames[index].targetMttName);
      },
      onPrizeInputChanged: (value) {
        _provider.setGame(
          index: index,
          model: _games[index].copyWith(
            prize: value,
          ),
        );
      },
      isDeleteButtonEnabled: true,
      onDeleteButtonPressed: () {
        if (_games.length > 1) {
          _provider.deleteGame(index);
        } else {
          showToast(
            context: context,
            message: '최소 1개의 토너먼트가 필요합니다.',
          );
        }
      },
      isSaveButtonEnabled: true,
    );
  }
}
