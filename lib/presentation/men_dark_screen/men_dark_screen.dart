import 'package:flutter7/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter7/core/app_export.dart';

class MenDarkScreen extends StatelessWidget {
  const MenDarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 34.v),
                child: Column(children: [
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
                      },
                      alignment: Alignment.centerRight),
                  Spacer(flex: 23),
                  CustomImageView(
                      imagePath: ImageConstant.imgComponent10,
                      height: 135.v,
                      width: 351.h),
                  Spacer(flex: 76)
                ]))));
  }

  /// Navigates to the arkadaEkleDarkScreen when the action is triggered.
  onTapArkadaEkle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.arkadaEkleDarkScreen);
  }
}
