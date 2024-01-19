import '../explore_screen/widgets/viewhierarchy_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:saraag_s_happymart/core/app_export.dart';
import 'package:saraag_s_happymart/presentation/catagories_2_beverages_page/catagories_2_beverages_page.dart';
import 'package:saraag_s_happymart/presentation/home_page/home_page.dart';
import 'package:saraag_s_happymart/widgets/app_bar/appbar_title.dart';
import 'package:saraag_s_happymart/widgets/app_bar/custom_app_bar.dart';
import 'package:saraag_s_happymart/widgets/custom_bottom_bar.dart';
import 'package:saraag_s_happymart/widgets/custom_search_view.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              SizedBox(height: 1.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15.h),
                decoration: AppDecoration.fillOnSecondaryContainer,
                child: Column(
                  children: [
                    CustomSearchView(
                      controller: searchController,
                      hintText: "Search",
                    ),
                    SizedBox(height: 29.v),
                    _buildViewHierarchy(context),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Categories",
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 135.v,
        crossAxisCount: 3,
        mainAxisSpacing: 22.h,
        crossAxisSpacing: 22.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 12,
      itemBuilder: (context, index) {
        return ViewhierarchyItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Shop:
        return AppRoutes.catagories2BeveragesPage;
      case BottomBarEnum.Explore:
        return AppRoutes.homePage;
      case BottomBarEnum.Cart:
        return "/";
      case BottomBarEnum.Account:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.catagories2BeveragesPage:
        return Catagories2BeveragesPage();
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}
