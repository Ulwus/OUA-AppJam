import 'package:flutter/material.dart';
import 'package:flutter7/core/app_export.dart';

class ArananYerDarkScreen extends StatelessWidget {
  const ArananYerDarkScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 14.h),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle36,
                height: 365.v,
                width: 401.h,
              ),
              SizedBox(height: 16.v),
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
}
