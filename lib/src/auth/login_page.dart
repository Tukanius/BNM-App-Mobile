// ignore_for_file: deprecated_member_use

import 'package:after_layout/after_layout.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:bnm_flutter/components/custom_button.dart/custom_button.dart';
import 'package:bnm_flutter/components/ui/color.dart';
import 'package:bnm_flutter/components/ui/form_textfield.dart';
import 'package:bnm_flutter/models/user_model/user.dart';
import 'package:bnm_flutter/provider/user_provider.dart';
// import 'package:bnm_flutter/src/auth/forget_password.dart';
import 'package:bnm_flutter/src/auth/register_page.dart';
import 'package:bnm_flutter/src/main_page.dart';
import 'package:bnm_flutter/src/utils/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  static const routeName = "LoginPage";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with AfterLayoutMixin {
  GlobalKey<FormBuilderState> fbkey = GlobalKey<FormBuilderState>();
  bool isVisible = true;
  bool saveUserName = false;
  bool isLoading = false;
  TextEditingController emailController = TextEditingController();

  _storePhone(String userName) async {
    await secureStorage.setUserName(userName);
  }

  final SecureStorage secureStorage = SecureStorage();

  @override
  afterFirstLayout(BuildContext context) async {
    Future<String?> usernameStore = secureStorage.getUserName();
    String resultUsername = await usernameStore ?? "";
    print('=============STORED==========');
    print(resultUsername);
    print('=============STORED==========');
    if (resultUsername != "") {
      setState(() {
        emailController.text = resultUsername;
        saveUserName = true;
      });
    }
  }

  onSubmit() async {
    FocusScope.of(context).unfocus();
    final String userName;
    if (fbkey.currentState!.saveAndValidate()) {
      try {
        setState(() {
          isLoading = true;
        });
        if (saveUserName == true) {
          userName = fbkey.currentState?.fields['userName']?.value;
          _storePhone(userName);
        } else {
          secureStorage.deleteAll();
        }
        User save = User.fromJson(fbkey.currentState!.value);
        save.email.toString().trim();
        await Provider.of<UserProvider>(context, listen: false).login(save);
        UserProvider().setUsername(save.username.toString());
        await Provider.of<UserProvider>(context, listen: false).me(true);
        secureStorage.deleteAll();
        setState(() {
          isLoading = false;
        });
        await Navigator.of(context).pushNamed(
          MainPage.routeName,
          arguments: MainPageArguments(changeIndex: 0),
        );
      } catch (e) {
        setState(() {
          isLoading = false;
        });
        print(e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final bool isKeyboardVisible = KeyboardVisibilityProvider.isKeyboardVisible(
      context,
    );
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            SizedBox(height: 40),
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
                                    name: 'userName',
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
                                  SizedBox(height: 16),
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
                                          overlayColor: WidgetStateProperty.all(
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
                                ],
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      saveUserName = !saveUserName;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                          border: Border.all(color: gray200),
                                          color: white,
                                        ),
                                        height: 20,
                                        width: 20,
                                        child: saveUserName == true
                                            ? Icon(
                                                Icons.check,
                                                size: 16,
                                                color: startColor,
                                              )
                                            : SizedBox(),
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Remember me',
                                        style: TextStyle(
                                          color: gray800,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigator.of(
                                    //   context,
                                    // ).pushNamed(ForgetPassword.routeName);
                                  },
                                  child: Text(
                                    'Forgot password?',
                                    style: TextStyle(
                                      color: zeroBlack,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            isKeyboardVisible == true
                                ? Column(
                                    children: [
                                      SizedBox(height: 16),
                                      CustomButton(
                                        onTap: () {
                                          onSubmit();
                                        },
                                        loaderColor: white,
                                        isLoading: false,
                                        text: 'Log In',
                                      ),
                                    ],
                                  )
                                : Column(
                                    children: [
                                      SizedBox(height: 40),
                                      CustomButton(
                                        onTap: () {
                                          onSubmit();
                                        },
                                        loaderColor: white,
                                        isLoading: false,
                                        text: 'Log In',
                                      ),
                                      SizedBox(height: 18),
                                      Text(
                                        'or',
                                        style: TextStyle(
                                          color: zeroBlack,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 14),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(14),
                                                color: gray200,
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                vertical: 18,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SvgPicture.asset(
                                                    'assets/svg/facebook.svg',
                                                    height: 32,
                                                    width: 32,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 16),

                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(14),
                                                color: gray200,
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                vertical: 22,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SvgPicture.asset(
                                                    'assets/svg/google.svg',
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 16),
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(14),
                                                color: gray200,
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                vertical: 22,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SvgPicture.asset(
                                                    'assets/svg/phone.svg',
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 30),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                              Navigator.of(context).pushNamed(
                                                RegisterPage.routeName,
                                              );
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
          ],
        ),
      ),
    );
  }
}
