import 'package:go_router/go_router.dart';
import 'package:pokerspot_partner_app/common/routes/custom_route/bottom_to_top.dart';
import 'package:pokerspot_partner_app/common/routes/custom_route/right_to_left.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/guide/views/guide_tab_view.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/intro/views/intro_view.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/business/views/business_view.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/essential/views/essential_view.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/game/views/game_view.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/image_upload/views/image_upload_view.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/operation/views/operation_view.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/new/process/success/views/success_view.dart';
import 'package:pokerspot_partner_app/presentation/views/shop/select/views/select.dart';

const String shopPath = 'shop';

enum ShopRoutes {
  newIntro('$shopPath/new/intro'),
  newGuide('$shopPath/new/guide'),

  processBusiness('$shopPath/process/business'),
  processEssential('$shopPath/process/essential'),
  processImageUpload('$shopPath/process/image_upload'),
  processOperation('$shopPath/process/operation'),
  processGame('$shopPath/process/game'),
  processSuccess('$shopPath/process/success'),

  select('$shopPath/select'),
  ;

  const ShopRoutes(this.path);

  final String path;
}

List<RouteBase> shopRoutes = [
  rightToLeft(
    ShopRoutes.newIntro.path,
    const ShopNewIntroView(),
  ),
  bottomToTop(
    ShopRoutes.newGuide.path,
    const ShopNewGuideTabView(),
  ),
  rightToLeft(
    ShopRoutes.processBusiness.path,
    ShopProcessBusinessView(),
  ),
  rightToLeft(
    ShopRoutes.processEssential.path,
    ShopProcessEssentialView(),
  ),
  rightToLeft(
    ShopRoutes.processImageUpload.path,
    const ShopProcessImageUploadView(),
  ),
  rightToLeft(
    ShopRoutes.processOperation.path,
    const ShopProcessOperationView(),
  ),
  rightToLeft(
    ShopRoutes.processGame.path,
    const ShopProcessGameView(),
  ),
  rightToLeft(
    ShopRoutes.processSuccess.path,
    const ShopProcessSuccessView(),
  ),
  bottomToTop(
    ShopRoutes.select.path,
    const StoreSelectView(),
  ),
];
