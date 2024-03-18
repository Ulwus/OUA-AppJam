import 'package:flutter7/widgets/custom_elevated_button.dart';
import 'package:flutter7/widgets/custom_icon_button.dart';
import 'package:flutter7/widgets/custom_search_view.dart';
import 'widgets/anamen_dark_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter7/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AnaMenDarkScreen extends StatelessWidget {
  AnaMenDarkScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.h),
                        child: Column(children: [
                          _buildSixteen(context),
                          SizedBox(height: 36.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle12,
                              height: 133.v,
                              width: 228.h,
                              radius: BorderRadius.circular(12.h)),
                          SizedBox(height: 37.v),
                          _buildAnaMenDARK(context),
                          SizedBox(height: 23.v),
                          _buildComponentTen(context)
                        ]))))));
  }

  /// Section Widget
  Widget _buildSixteen(BuildContext context) {
    return SizedBox(
        height: 310.v,
        width: 405.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  height: 278.v,
                  width: 405.h,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.img79a125ab3656,
                        height: 278.v,
                        width: 405.h,
                        radius: BorderRadius.circular(15.h),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding:
                                EdgeInsets.fromLTRB(12.h, 39.v, 12.h, 195.v),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomElevatedButton(
                                      width: 124.h,
                                      text: "Istanbul",
                                      leftIcon: Container(
                                          margin: EdgeInsets.only(right: 6.h),
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgIcons8location1001,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize))),
                                  CustomIconButton(
                                      height: 44.adaptSize,
                                      width: 44.adaptSize,
                                      padding: EdgeInsets.all(8.h),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgGroup2))
                                ])))
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: CustomSearchView(
                  width: 212.h,
                  controller: searchController,
                  hintText: "Konum Ara",
                  alignment: Alignment.bottomCenter))
        ]));
  }

  /// Section Widget
  Widget _buildAnaMenDARK(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 27.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 137.v,
                crossAxisCount: 2,
                mainAxisSpacing: 39.h,
                crossAxisSpacing: 39.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return AnamenDarkItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildComponentTen(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapComponentTen(context);
        },
        child: SizedBox(
            height: 135.v,
            width: 351.h,
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      height: 512.v,
                      width: 351.h,
                      decoration: BoxDecoration(
                          color: appTheme.gray90001,
                          borderRadius: BorderRadius.circular(20.h),
                          boxShadow: [
                            BoxShadow(
                                color: appTheme.gray80003,
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(0, 0))
                          ]))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      height: 64.v,
                      width: 71.h,
                      decoration: BoxDecoration(
                          color: appTheme.gray80001,
                          borderRadius: BorderRadius.circular(12.h)))),
              CustomImageView(
                  imagePath: ImageConstant.imgIcons8Map1001,
                  height: 46.adaptSize,
                  width: 46.adaptSize,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 5.v)),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      height: 122.adaptSize,
                      width: 122.adaptSize,
                      decoration: BoxDecoration(
                          color: appTheme.gray80002,
                          borderRadius: BorderRadius.circular(22.h))))
            ])));
  }

  /// Navigates to the kayanMenDarkScreen when the action is triggered.
  onTapComponentTen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.kayanMenDarkScreen);
  }
}
