import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/guide/tabs/register_introduction.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/guide/tabs/register_process.dart';

class ShopNewGuideTabView extends StatefulWidget {
  const ShopNewGuideTabView({Key? key}) : super(key: key);

  @override
  State<ShopNewGuideTabView> createState() => _ShopNewGuideTabViewState();
}

class _ShopNewGuideTabViewState extends State<ShopNewGuideTabView>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  List<String> tabBarTitles = ['매장 등록 절차', '매장 등록 안내'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabBarTitles.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> tabBarHeader(List<String> titles) {
      return titles
          .map((title) => Tab(
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.black),
                ),
              ))
          .toList();
    }

    return DefaultTabController(
      initialIndex: 1,
      length: tabBarTitles.length,
      child: Scaffold(
        appBar: const CustomAppBar(
          text: '신규 매장 등록 가이드',
          theme: CustomAppBarTheme.dark,
          left: Icons.close_rounded,
        ),
        body: Column(
          children: [
            TabBar(
              controller: _tabController,
              tabs: tabBarHeader(tabBarTitles),
              dividerColor: lightColorScheme.outline,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  ShopRegisterProcessTab(),
                  ShopRegisterIntroductionTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
