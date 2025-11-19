import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:bnm_flutter/components/ui/color.dart';
import 'package:bnm_flutter/components/ui/form_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = "RegisterPage";
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormBuilderState> fbkey = GlobalKey<FormBuilderState>();
  bool isVisible = true;
  bool isVisible1 = true;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    // final bool isKeyboardVisible = KeyboardVisibilityProvider.isKeyboardVisible(
    //   context,
    // );

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: white,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Row(
              children: [
                SizedBox(width: 12),
                SvgPicture.asset('assets/svg/back_button.svg'),
              ],
            ),
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                SizedBox(height: 20),
                Center(
                  child: Image.asset(
                    'assets/icon/android_logo.png',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: BlurryContainer(
                blur: 2,
                padding: EdgeInsets.all(0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  decoration: BoxDecoration(
                    // gradient: LinearGradient(
                    //   begin: Alignment.bottomCenter,
                    //   end: Alignment.topCenter,
                    //   colors: [black, black.withOpacity(0.2)],
                    // ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    border: Border(
                      top: BorderSide(color: gray200),
                      left: BorderSide(color: gray200),
                      right: BorderSide(color: gray200),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                              SizedBox(height: 16),
                              Text(
                                'Register',
                                style: TextStyle(
                                  color: zeroBlack,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 12),

                              FormBuilder(
                                key: fbkey,
                                child: Column(
                                  children: [
                                    FormTextField(
                                      borderColor: gray200,
                                      contentPadding: EdgeInsets.all(12),
                                      borderRadius: 12,
                                      dense: true,
                                      color: white,
                                      name: 'lastName',
                                      hintTextStyle: TextStyle(
                                        color: gray400,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      hintText: 'Please enter your lastname.',
                                      labelText: 'Last name',
                                      labelColor: gray800,
                                      colortext: zeroBlack,
                                      validator: FormBuilderValidators.compose([
                                        FormBuilderValidators.required(
                                          errorText:
                                              'Please enter your lastname.',
                                        ),
                                      ]),
                                    ),
                                    SizedBox(height: 12),
                                    FormTextField(
                                      borderColor: gray200,
                                      contentPadding: EdgeInsets.all(12),
                                      borderRadius: 12,
                                      dense: true,
                                      color: white,
                                      name: 'firstName',
                                      hintTextStyle: TextStyle(
                                        color: gray400,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      hintText: 'Please enter your first name.',
                                      labelText: 'Email',
                                      labelColor: gray800,
                                      colortext: zeroBlack,
                                      validator: FormBuilderValidators.compose([
                                        FormBuilderValidators.required(
                                          errorText:
                                              'Please enter your first name.',
                                        ),
                                      ]),
                                    ),
                                    SizedBox(height: 12),
                                    FormTextField(
                                      borderColor: gray200,
                                      contentPadding: EdgeInsets.all(12),
                                      borderRadius: 12,
                                      dense: true,
                                      color: white,
                                      name: 'phone',
                                      hintTextStyle: TextStyle(
                                        color: gray400,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      hintText: 'Please enter your phone.',
                                      labelText: 'Phone',
                                      labelColor: gray800,
                                      colortext: zeroBlack,
                                      validator: FormBuilderValidators.compose([
                                        FormBuilderValidators.required(
                                          errorText: 'Please enter your phone.',
                                        ),
                                      ]),
                                    ),
                                    SizedBox(height: 12),
                                    FormTextField(
                                      borderColor: gray200,
                                      contentPadding: EdgeInsets.all(12),
                                      borderRadius: 12,
                                      dense: true,
                                      color: white,
                                      name: 'email',
                                      hintTextStyle: TextStyle(
                                        color: gray400,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      hintText: 'Please enter your email.',
                                      labelText: 'Email',
                                      labelColor: gray800,
                                      colortext: zeroBlack,
                                      validator: FormBuilderValidators.compose([
                                        FormBuilderValidators.required(
                                          errorText: 'Please enter your email.',
                                        ),
                                      ]),
                                    ),
                                    SizedBox(height: 12),
                                    FormTextField(
                                      borderColor: gray200,
                                      borderRadius: 12,
                                      contentPadding: EdgeInsets.all(12),
                                      dense: true,
                                      color: white,
                                      name: 'password',
                                      hintTextStyle: TextStyle(
                                        color: gray400,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      hintText: 'Please enter your password.',
                                      labelText: 'Password',
                                      labelColor: gray800,
                                      colortext: zeroBlack,
                                      validator: FormBuilderValidators.compose([
                                        FormBuilderValidators.required(
                                          errorText:
                                              'Please enter your password.',
                                        ),
                                      ]),
                                      obscureText: isVisible,
                                      suffixContraints: BoxConstraints(
                                        maxHeight: 20,
                                      ),
                                      suffixIcon: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(width: 10),
                                          InkWell(
                                            overlayColor:
                                                WidgetStateProperty.all(
                                                  transparent,
                                                ),
                                            onTap: () {
                                              setState(() {
                                                isVisible = !isVisible;
                                              });
                                            },
                                            child: isVisible == false
                                                ? Icon(
                                                    Icons.visibility,
                                                    color: gray800,
                                                  )
                                                : Icon(
                                                    Icons.visibility_off,
                                                    color: gray800,
                                                  ),
                                          ),
                                          SizedBox(width: 15),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 12),
                                    FormTextField(
                                      borderColor: gray200,
                                      borderRadius: 12,
                                      contentPadding: EdgeInsets.all(12),
                                      dense: true,
                                      color: white,
                                      name: 'passwordVerify',
                                      hintTextStyle: TextStyle(
                                        color: gray400,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      hintText: 'Please repeat password.',
                                      labelText: 'Password',
                                      labelColor: gray800,
                                      colortext: zeroBlack,
                                      validator: FormBuilderValidators.compose([
                                        FormBuilderValidators.required(
                                          errorText: 'Please repeat password.',
                                        ),
                                      ]),
                                      obscureText: isVisible1,
                                      suffixContraints: BoxConstraints(
                                        maxHeight: 20,
                                      ),
                                      suffixIcon: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(width: 10),
                                          InkWell(
                                            overlayColor:
                                                WidgetStateProperty.all(
                                                  transparent,
                                                ),
                                            onTap: () {
                                              setState(() {
                                                isVisible1 = !isVisible1;
                                              });
                                            },
                                            child: isVisible1 == false
                                                ? Icon(
                                                    Icons.visibility,
                                                    color: gray800,
                                                  )
                                                : Icon(
                                                    Icons.visibility_off,
                                                    color: gray800,
                                                  ),
                                          ),
                                          SizedBox(width: 15),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Don’t have an account?',
                                    style: TextStyle(
                                      color: zeroBlack,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(
                                        context,
                                      ).pushNamed(RegisterPage.routeName);
                                    },
                                    child: Text(
                                      'Sign up',
                                      style: TextStyle(
                                        color: blueSecondary,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: mediaQuery.padding.bottom + 16),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
