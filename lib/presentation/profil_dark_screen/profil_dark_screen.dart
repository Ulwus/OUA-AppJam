import 'package:flutter7/widgets/custom_icon_button.dart';
import 'package:flutter7/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter7/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfilDarkScreen extends StatelessWidget {
  ProfilDarkScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 34.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 30.h),
                              child: Column(children: [
                                _buildFiftyThree(context),
                                SizedBox(height: 89.v),
                                SizedBox(
                                    height: 637.v,
                                    width: 355.h,
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 32.h,
                                                      vertical: 51.v),
                                                  decoration: AppDecoration
                                                      .fillGray90001
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder12),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        SizedBox(height: 32.v),
                                                        Text("@Ulwus",
                                                            style: CustomTextStyles
                                                                .headlineSmall25),
                                                        SizedBox(height: 17.v),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 4.h,
                                                                    right: 5.h),
                                                            child: CustomTextFormField(
                                                                controller:
                                                                    editTextController)),
                                                        SizedBox(height: 24.v),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 4.h,
                                                                    right: 5.h),
                                                            child: CustomTextFormField(
                                                                controller:
                                                                    editTextController1)),
                                                        SizedBox(height: 24.v),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 4.h,
                                                                    right: 5.h),
                                                            child: CustomTextFormField(
                                                                controller:
                                                                    editTextController2,
                                                                textInputAction:
                                                                    TextInputAction
                                                                        .done)),
                                                        SizedBox(height: 24.v),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Container(
                                                                height: 133.v,
                                                                width: 282.h,
                                                                decoration: BoxDecoration(
                                                                    color: appTheme
                                                                        .gray80001,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            22.h))))
                                                      ]))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle21,
                                              height: 133.adaptSize,
                                              width: 133.adaptSize,
                                              radius:
                                                  BorderRadius.circular(20.h),
                                              alignment: Alignment.topCenter)
                                        ])),
                                SizedBox(height: 40.v),
                                _buildComponentTen(context)
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildFiftyThree(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomIconButton(
              height: 44.adaptSize,
              width: 44.adaptSize,
              padding: EdgeInsets.all(4.h),
              child: CustomImageView(imagePath: ImageConstant.imgGroup11)),
          GestureDetector(
              onTap: () {
                onTapTen(context);
              },
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 8.v),
                  decoration: AppDecoration.outlineBlackF
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder9),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIcons8Group90,
                            height: 26.adaptSize,
                            width: 26.adaptSize,
                            margin: EdgeInsets.only(top: 2.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 11.h, top: 4.v),
                            child: Text("Arkadaşlar",
                                style: CustomTextStyles.bodyLarge18))
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

  /// Navigates to the arkadaLarDarkScreen when the action is triggered.
  onTapTen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.arkadaLarDarkScreen);
  }

  /// Navigates to the menDarkScreen when the action is triggered.
  onTapComponentTen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menDarkScreen);
  }
}
