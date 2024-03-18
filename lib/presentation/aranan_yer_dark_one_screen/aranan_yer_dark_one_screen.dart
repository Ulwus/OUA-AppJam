import 'package:flutter7/widgets/custom_icon_button.dart';
import 'package:flutter7/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter7/core/app_export.dart';

class ArananYerDarkOneScreen extends StatelessWidget {
  const ArananYerDarkOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 14.h),
                        child: Column(children: [
                          _buildTwentyEight(context),
                          SizedBox(height: 62.v),
                          _buildTwentyNine(context),
                          SizedBox(height: 98.v),
                          _buildComponentTen(context)
                        ]))))));
  }

  /// Section Widget
  Widget _buildTwentyEight(BuildContext context) {
    return SizedBox(
        height: 402.v,
        width: 401.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 23.h, vertical: 34.v),
                  decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15),
                  child: CustomIconButton(
                      height: 44.adaptSize,
                      width: 44.adaptSize,
                      padding: EdgeInsets.all(4.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgGroup4)))),
          CustomElevatedButton(
              width: 233.h,
              text: "HARİTA",
              rightIcon: Container(
                  margin: EdgeInsets.only(left: 30.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIcons8Map1001,
                      height: 46.adaptSize,
                      width: 46.adaptSize)),
              alignment: Alignment.bottomCenter)
        ]));
  }

  /// Section Widget
  Widget _buildTwentyNine(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 26.h, right: 11.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(right: 18.h),
                  child: Column(children: [
                    _buildTwo(context, price: ""),
                    SizedBox(height: 38.v),
                    _buildTwo(context, price: "")
                  ]))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Column(children: [
                    _buildFive(context, threeHundredEightyFive: "3.8 / 5"),
                    SizedBox(height: 36.v),
                    _buildFive(context, threeHundredEightyFive: "3.8 / 5")
                  ])))
        ]));
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
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(20.h),
                          boxShadow: [
                            BoxShadow(
                                color: appTheme.gray80001,
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
                          color: appTheme.gray800,
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
                          color: theme.colorScheme.onPrimaryContainer,
                          borderRadius: BorderRadius.circular(22.h))))
            ])));
  }

  /// Common widget
  Widget _buildTwo(
    BuildContext context, {
    required String price,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 54.h, vertical: 9.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder22),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: ImageConstant.imgIcons8Money96,
              height: 56.adaptSize,
              width: 56.adaptSize),
          SizedBox(height: 4.v),
          Text(price,
              style: theme.textTheme.headlineLarge!
                  .copyWith(color: theme.colorScheme.onPrimary)),
          SizedBox(height: 7.v)
        ]));
  }

  /// Common widget
  Widget _buildFive(
    BuildContext context, {
    required String threeHundredEightyFive,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 41.h, vertical: 14.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder22),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIcons8Star100,
                  height: 46.adaptSize,
                  width: 46.adaptSize),
              SizedBox(height: 10.v),
              Text(threeHundredEightyFive,
                  style: theme.textTheme.headlineLarge!
                      .copyWith(color: theme.colorScheme.onPrimary))
            ]));
  }

  /// Navigates to the arananYerDarkScreen when the action is triggered.
  onTapComponentTen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.arananYerDarkScreen);
  }
}
