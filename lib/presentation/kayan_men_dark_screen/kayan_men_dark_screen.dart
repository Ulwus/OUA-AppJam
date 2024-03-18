import 'package:flutter7/widgets/custom_elevated_button.dart';
import 'package:flutter7/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter7/core/app_export.dart';

class KayanMenDarkScreen extends StatelessWidget {
  const KayanMenDarkScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          child: Column(
            children: [
              _buildTwentyThree(context),
              SizedBox(height: 49.v),
              CustomImageView(
                imagePath: ImageConstant.imgComponent10,
                height: 135.v,
                width: 351.h,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentFive(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 96.h,
          top: 246.v,
          right: 96.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 17.v,
        ),
        decoration: AppDecoration.fillGray90001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder7,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Konum Ara",
              style: theme.textTheme.headlineSmall,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgIcons8search1001,
              height: 29.adaptSize,
              width: 29.adaptSize,
              margin: EdgeInsets.only(left: 35.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyThree(BuildContext context) {
    return SizedBox(
      height: 310.v,
      width: 405.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 278.v,
              width: 405.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img79a125ab3656,
                    height: 278.v,
                    width: 405.h,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10.h, 39.v, 14.h, 195.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomElevatedButton(
                            width: 124.h,
                            text: "Istanbul",
                            leftIcon: Container(
                              margin: EdgeInsets.only(right: 6.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgIcons8location1001,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ),
                          ),
                          CustomIconButton(
                            height: 44.adaptSize,
                            width: 44.adaptSize,
                            padding: EdgeInsets.all(8.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildComponentFive(context),
        ],
      ),
    );
  }
}
