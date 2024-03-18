import 'package:flutter/material.dart';
import 'package:flutter7/core/app_export.dart';

// ignore: must_be_immutable
class AramadarkItemWidget extends StatelessWidget {
  AramadarkItemWidget({
    Key? key,
    this.onTapComponent,
  }) : super(
          key: key,
        );

  VoidCallback? onTapComponent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapComponent!.call();
      },
      child: Container(
        decoration: AppDecoration.fillOnError.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 83.v,
              width: 105.h,
              decoration: BoxDecoration(
                color: appTheme.blueGray900,
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 16.v,
                right: 11.h,
                bottom: 7.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 80.h,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 5.v,
                    ),
                    child: Text(
                      "X Müzesi\nİstanbul",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleLarge22,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 45.h),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIcons8Location100,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 2.h),
                        ),
                        SizedBox(height: 3.v),
                        Text(
                          " 2 km",
                          style: theme.textTheme.titleLarge,
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
