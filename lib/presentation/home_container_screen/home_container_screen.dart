import 'bloc/home_container_bloc.dart';
import 'models/home_container_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:dwtelehealth/presentation/home_page/home_page.dart';
import 'package:dwtelehealth/presentation/message_history_tab_container_page/message_history_tab_container_page.dart';
import 'package:dwtelehealth/presentation/profile_page/profile_page.dart';
import 'package:dwtelehealth/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {
  HomeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeContainerBloc>(
        create: (context) => HomeContainerBloc(
            HomeContainerState(homeContainerModelObj: HomeContainerModel()))
          ..add(HomeContainerInitialEvent()),
        child: HomeContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeContainerBloc, HomeContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.homePage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Message:
        return AppRoutes.messageHistoryTabContainerPage;
      case BottomBarEnum.Calendargray500:
        return "/";
      case BottomBarEnum.Lockgray500:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      case AppRoutes.messageHistoryTabContainerPage:
        return MessageHistoryTabContainerPage.builder(context);
      case AppRoutes.profilePage:
        return ProfilePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
