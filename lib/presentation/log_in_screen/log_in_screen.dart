import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';
import 'package:travel_with_me/widgets/custom_elevated_button.dart';
import 'package:travel_with_me/widgets/custom_icon_button.dart';
import 'package:travel_with_me/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.deepPurpleA200,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 3.v),
                    child: Column(children: [
                      CustomIconButton(
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          decoration: IconButtonStyleHelper.fillDeepPurpleA,
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapBtnArrowLeft(context);
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft)),
                      SizedBox(height: 79.v),
                      _buildPageTitle(context),
                      SizedBox(height: 33.v),
                      CustomTextFormField(
                          controller: emailController,
                          hintText: "Email Id",
                          textInputType: TextInputType.emailAddress),
                      SizedBox(height: 24.v),
                      CustomTextFormField(
                          controller: passwordController,
                          hintText: "Password",
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 13.v, 16.h, 13.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant
                                      .imgAntdesigneyeinvisiblefilled,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          suffixConstraints: BoxConstraints(maxHeight: 50.v),
                          obscureText: true,
                          contentPadding: EdgeInsets.only(
                              left: 16.h, top: 15.v, bottom: 15.v)),
                      SizedBox(height: 27.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtForgotPassword(context);
                              },
                              child: Text("Forgot Password?",
                                  style: CustomTextStyles.bodyLargePrimary))),
                      SizedBox(height: 30.v),
                      CustomElevatedButton(
                          text: "Log In",
                          buttonStyle: CustomButtonStyles.fillPrimary),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildPageTitle(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Welcome to Social", style: CustomTextStyles.headlineLargePrimary),
      SizedBox(height: 12.v),
      Text("Please enter your email address and password. ",
          style: CustomTextStyles.bodyLargePrimary)
    ]);
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }
}
