import 'package:flutter7/widgets/custom_icon_button.dart';
import 'package:flutter7/widgets/custom_elevated_button.dart';
import 'widgets/arkada_lardark_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter7/core/app_export.dart';

class ArkadaLarDarkScreen extends StatelessWidget {
  const ArkadaLarDarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 34.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 30.h),
                              child: Column(children: [
                                _buildFortyNine(context),
                                SizedBox(height: 120.v),
                                SizedBox(
                                    height: 604.v,
                                    width: 355.h,
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          _buildArkadalarDARK(context),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  height: 62.v,
                                                  width: 206.h,
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 14.h,
                                                      vertical: 8.v),
                                                  decoration: AppDecoration
                                                      .fillGray80001
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder12),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgIcons8Search100,
                                                      height: 43.adaptSize,
                                                      width: 43.adaptSize,
                                                      alignment:
                                                          Alignment.topRight)))
                                        ])),
                                SizedBox(height: 42.v),
                                _buildComponentTen(context)
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildFortyNine(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomIconButton(
              height: 44.adaptSize,
              width: 44.adaptSize,
              padding: EdgeInsets.all(4.h),
              child: CustomImageView(imagePath: ImageConstant.imgGroup11)),
          CustomElevatedButton(
              width: 155.h,
              text: "Arkadaş Ekle",
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 13.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIcons8plus241,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              onPressed: () {
                onTapArkadaEkle(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildArkadalarDARK(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.only(top: 30.v),
            padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 41.v),
            decoration: AppDecoration.fillGray90001
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
            child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 29.v);
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ArkadaLardarkItemWidget(onTapComponent: () {
                    onTapComponent(context);
                  });
                })));
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
                                color: appTheme.gray80002,
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
                          color: appTheme.gray80001,
                          borderRadius: BorderRadius.circular(22.h))))
            ])));
  }

  /// Navigates to the arkadaEkleDarkScreen when the action is triggered.
  onTapArkadaEkle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.arkadaEkleDarkScreen);
  }

  /// Navigates to the profilDarkScreen when the action is triggered.
  onTapComponent(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profilDarkScreen);
  }

  /// Navigates to the menDarkScreen when the action is triggered.
  onTapComponentTen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menDarkScreen);
  }
}
