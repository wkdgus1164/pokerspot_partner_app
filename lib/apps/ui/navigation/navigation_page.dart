import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_partner_app/apps/ui/navigation/helper.dart';

class NavigationPage extends StatefulHookConsumerWidget {
  const NavigationPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NavigationPageState();
}

class _NavigationPageState extends ConsumerState<NavigationPage> {
  int currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        items: NavigationHelper().getBottomNavigationItems(),
        onTap: _handleMenuIndexChange,
      ),
      body: NavigationHelper().pages[currentPageIndex],
    );
  }

  void _handleMenuIndexChange(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }
}
