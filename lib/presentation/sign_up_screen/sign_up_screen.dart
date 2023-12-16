import 'package:flutter/material.dart';
import 'package:travel_with_me/core/app_export.dart';
import 'package:travel_with_me/widgets/custom_elevated_button.dart';
import 'package:travel_with_me/widgets/custom_icon_button.dart';
import 'package:travel_with_me/widgets/custom_radio_button.dart';
import 'package:travel_with_me/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  String genderRadioGroup = "";

  List<String> radioList = ["lbl_female", "lbl_male"];

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
                      SizedBox(height: 37.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Create a New Account",
                              style: CustomTextStyles.headlineLargePrimary)),
                      SizedBox(height: 10.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("It’s fast and easy",
                              style: CustomTextStyles.bodyLargePrimary)),
                      SizedBox(height: 21.v),
                      _buildFirstNameRow(context),
                      SizedBox(height: 16.v),
                      _buildEmail(context),
                      SizedBox(height: 16.v),
                      _buildPhone(context),
                      SizedBox(height: 16.v),
                      _buildDateOfBirth(context),
                      SizedBox(height: 26.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Gender",
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 8.v),
                      _buildGenderRadioGroup(context),
                      SizedBox(height: 42.v),
                      Container(
                          width: 367.h,
                          margin: EdgeInsets.only(left: 8.h, right: 5.h),
                          child: Text(
                              "By clicking Register, you agree to our Data Policy and Cookie Policy. You will receive an SMS Notification from Facebook and can decline it at any time.",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 25.v),
                      _buildSignUpButton(context),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: CustomTextFormField(
                controller: firstNameController, hintText: "First Name")));
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: CustomTextFormField(
                controller: lastNameController, hintText: "Last Name")));
  }

  /// Section Widget
  Widget _buildFirstNameRow(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildFirstName(context), _buildLastName(context)]);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Email Id",
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return CustomTextFormField(
        controller: phoneController,
        hintText: "Phone No.",
        textInputType: TextInputType.phone);
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return CustomTextFormField(
        controller: dateOfBirthController,
        hintText: "Date of Birth",
        textInputAction: TextInputAction.done,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 13.v, 16.h, 13.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgCalendartoday,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 50.v),
        contentPadding: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 15.v));
  }

  /// Section Widget
  Widget _buildGenderRadioGroup(BuildContext context) {
    return Row(children: [
      CustomRadioButton(
          text: "Female",
          value: radioList[0],
          groupValue: genderRadioGroup,
          padding: EdgeInsets.fromLTRB(8.h, 14.v, 30.h, 14.v),
          onChange: (value) {
            genderRadioGroup = value;
          }),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: CustomRadioButton(
              text: "Male",
              value: radioList[1],
              groupValue: genderRadioGroup,
              padding: EdgeInsets.fromLTRB(8.h, 14.v, 30.h, 14.v),
              onChange: (value) {
                genderRadioGroup = value;
              }))
    ]);
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign Up", buttonStyle: CustomButtonStyles.fillPrimary);
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
