import 'package:flutter/material.dart';
import 'package:flutter7/core/app_export.dart';

// ignore: must_be_immutable
class ArkadaLardarkItemWidget extends StatelessWidget {
  ArkadaLardarkItemWidget({
    Key? key,
    this.onTapComponent,
  }) : super(
          key: key,
        );

  VoidCallback? onTapComponent;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          onTapComponent!.call();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 18.v,
          ),
          decoration: AppDecoration.fillGray80001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Row(
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
                  left: 20.h,
                  top: 14.v,
                  bottom: 9.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "@Ulwus",
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 3.v),
                    Container(
                      width: 62.h,
                      margin: EdgeInsets.only(left: 3.h),
                      child: Text(
                        "X Müzesi\nİstanbul",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
