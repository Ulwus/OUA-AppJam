import 'package:flutter/material.dart';
import 'package:flutter7/core/app_export.dart';

// ignore: must_be_immutable
class AnamenDarkItemWidget extends StatelessWidget {
  const AnamenDarkItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136.v,
      width: 156.h,
      decoration: AppDecoration.outlineBlack,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(bottom: 1.v),
              padding: EdgeInsets.symmetric(vertical: 9.v),
              decoration: AppDecoration.fillGray90001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgClouds1281,
                    height: 27.adaptSize,
                    width: 27.adaptSize,
                    margin: EdgeInsets.only(bottom: 90.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2.v,
                      bottom: 92.v,
                    ),
                    child: Text(
                      "Hava Durumu",
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle11,
            height: 93.v,
            width: 156.h,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
