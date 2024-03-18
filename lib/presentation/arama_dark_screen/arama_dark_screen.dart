import 'package:flutter7/widgets/custom_icon_button.dart';
import 'widgets/aramadark_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter7/core/app_export.dart';

class AramaDarkScreen extends StatelessWidget {
  const AramaDarkScreen({Key? key}) : super(key: key);

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
                              padding: EdgeInsets.symmetric(horizontal: 38.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomIconButton(
                                        height: 44.adaptSize,
                                        width: 44.adaptSize,
                                        padding: EdgeInsets.all(4.h),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGroup4)),
                                    SizedBox(height: 58.v),
                                    SizedBox(
                                        height: 667.v,
                                        width: 342.h,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 21.h,
                                                              vertical: 28.v),
                                                      decoration: AppDecoration
                                                          .fillPrimary
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder12),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            SizedBox(
                                                                height: 53.v),
                                                            _buildAramaDARK(
                                                                context)
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Container(
                                                      height: 62.v,
                                                      width: 206.h,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 14.h,
                                                              vertical: 9.v),
                                                      decoration: AppDecoration
                                                          .fillOnPrimaryContainer
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder12),
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgIcons8Search100,
                                                          height: 43.adaptSize,
                                                          width: 43.adaptSize,
                                                          alignment: Alignment
                                                              .centerRight)))
                                            ])),
                                    SizedBox(height: 41.v),
                                    _buildComponentTen(context)
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildAramaDARK(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 28.v);
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return AramadarkItemWidget(onTapComponent: () {
                onTapComponent(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildComponentTen(BuildContext context) {
    return SizedBox(
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
        ]));
  }

  /// Navigates to the arananYerDarkOneScreen when the action is triggered.
  onTapComponent(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.arananYerDarkOneScreen);
  }
}
