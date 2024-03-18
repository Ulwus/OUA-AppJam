import 'package:flutter/material.dart';
import 'package:flutter7/core/app_export.dart';

// ignore: must_be_immutable
class ArkadaEkledarkItemWidget extends StatelessWidget {
  const ArkadaEkledarkItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 18.v),
        decoration: AppDecoration.fillGray80001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle35,
              height: 97.adaptSize,
              width: 97.adaptSize,
              radius: BorderRadius.circular(
                20.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 14.v,
                bottom: 7.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "@Ulwus",
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 6.v),
                  Container(
                    width: 108.h,
                    padding: EdgeInsets.symmetric(vertical: 5.v),
                    decoration: AppDecoration.fillGray700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIcons8plus241,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 2.v),
                        ),
                        Text(
                          "Ekle",
                          style: CustomTextStyles.headlineSmallMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
