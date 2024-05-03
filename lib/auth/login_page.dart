import 'package:admin_lnet/customers/pages/customer_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController _emailOrPhoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.65;
    final width = MediaQuery.of(context).size.width * 0.35;
    return Scaffold(
      backgroundColor: const Color(0xffb50218).withOpacity(0.7),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: width,
              height: height,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0, 2),
                    blurRadius: 25,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Image.asset(
                            "img/logo.png",
                            width: 140,
                            height: 90,
                          ),
                          const Text(
                            "الرجاء تسجيل الدخول للمتابعة إلى لوحة التحكم",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          buildTextFieldtxt(
                            txt: ' البريد الإلكتروني',
                            icon: const Icon(Icons.email_outlined, color: Color(0xffb50218)),
                          ),
                          const SizedBox(height: 20),
                          buildTextFieldPass(
                            txt: 'كلمة السر',
                            icon: const Icon(Icons.lock_open_outlined, color: Color(0xffb50218)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () async {
                        try {
                          if (formKey.currentState!.validate()) {
                            var result = await FirebaseAuth.instance.signInWithEmailAndPassword(
                              email: _emailOrPhoneController.text,
                              password: _passwordController.text,
                            );

                            if (result.user != null) {
                              Get.to(const CustomerPage());
                            } else {
                              Get.snackbar(
                                "خطأ",
                                "الإيميل أو كلمة المرور خاطئة!!",
                                colorText: Colors.white,
                                snackPosition: SnackPosition.TOP,
                                backgroundColor: Colors.redAccent,
                              );
                            }
                          }
                        } catch (error) {
                          if (error is FirebaseAuthException) {
                            if (kDebugMode) {
                              print(error.code);
                            }
                            if (error.code == "invalid-email") {
                              Get.snackbar(
                                "خطأ",
                                "إيميل خاطئ",
                                colorText: Colors.white,
                                snackPosition: SnackPosition.TOP,
                                backgroundColor: Colors.redAccent,
                              );
                            } else {
                              Get.snackbar(
                                "خطأ",
                                "البريد الإلكتروني أو كلمة المرور خاطئة",
                                colorText: Colors.white,
                                snackPosition: SnackPosition.TOP,
                                backgroundColor: Colors.redAccent,
                              );
                            }
                          }
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffb50218),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Container(
                        width: 200,
                        child: const Center(
                          child: Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  TextFormField buildTextFieldtxt({required String txt, required Icon icon}) {
    return TextFormField(
      validator: (value) {
        if (value != null || value!.isNotEmpty) {
          if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value)) {
            return 'صيغة البريد الإلكتروني غير صحيحة';
          }
        } else {
          return 'يجب ألا يكون البريد الإلكتروني فارغًا';
        }
        return null;
      },
      controller: _emailOrPhoneController,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 15),
          child: icon,
        ),
        hintText: txt,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
          borderSide: const BorderSide(color: Color(0xffb50218)),
        ),
      ),
    );
  }

  TextFormField buildTextFieldPass({required String txt, required Icon icon}) {
    return TextFormField(
      validator: (value) {
        if (value != null){
          if (value.length < 6) {
            return 'كلمة المرور قصيرة جدًا';
          }
        }
        return null;
      },
      obscureText: true,
      controller: _passwordController,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 15),
          child: icon,
        ),
        hintText: txt,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
          borderSide: BorderSide(color: Colors.green.shade300),
        ),
      ),
    );
  }
  Future<void> signInWithEmailAndPassword() async {
    UserCredential? userCredential;
    try {
      String emailOrPhone = _emailOrPhoneController.text;
      String password = _passwordController.text;

      if (emailOrPhone.isNotEmpty && password.isNotEmpty) {
        // تسجيل الدخول بالبريد الإلكتروني وكلمة المرور
        userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailOrPhone,
          password: password,
        );
      } else if (emailOrPhone.isNotEmpty) {
        // تسجيل الدخول برقم الهاتف
        ConfirmationResult confirmationResult = await FirebaseAuth.instance.signInWithPhoneNumber(
          emailOrPhone,
          // RecaptchaVerifier(
          //   container: null,
          //   size: null,
          // ),
        );

        // يمكنك تعديل هذا الجزء بشكل مناسب حسب احتياجاتك
        String verificationCode = ''; // استبدل برمز التحقق الذي يتم إرساله للهاتف
        PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
          verificationId: confirmationResult.verificationId,
          smsCode: verificationCode,
        );

        userCredential = await FirebaseAuth.instance.signInWithCredential(phoneAuthCredential);
      }

      // التحقق من نجاح عملية تسجيل الدخول
      if (userCredential != null) {
        print('تم تسجيل الدخول بنجاح: ${userCredential.user!.uid}');
        Get.to(const CustomerPage());
      } else {
        print('لا يمكن تسجيل الدخول');
      }
    } catch (e) {
      // حدث خطأ أثناء تسجيل الدخول
      print('حدث خطأ أثناء تسجيل الدخول: $e');
    }
  }
}
