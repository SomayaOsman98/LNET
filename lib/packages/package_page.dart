import 'package:admin_lnet/customers/pages/customer_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../promotional/pages/promotional_page.dart';
import '../requests/request_page.dart';

class PackagePage extends StatelessWidget {
  const PackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: const Color(0xffe8e6e6).withOpacity(0.7),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.person_pin_rounded, size: 40,
                        color: Color(0xffb50218)),
                    tooltip: 'الملف الشخصي',
                    onPressed: () {},
                  ),
                  const Text(
                    'إسم المستخدم',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffb50218),
                    ),
                  ),
                ],
              ),
            ),
          ],
          title: Center(
            child: Text(
              "LNET",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 40,
                color: Color(0xffb50218),
              ),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.exit_to_app_outlined, size: 40,
                      color: Color(0xffb50218)),
                  tooltip: 'تسجيل خروج',
                  onPressed: () {},
                ),
                const Text(
                  ' خروج',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffb50218),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 4, horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(CustomerPage());
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size.fromHeight(80),
                          backgroundColor: const Color(0xffe0dddd).withOpacity(
                              0.7),
                          elevation: 18,
                          side: BorderSide(
                            width: 2,
                            color: const Color(0xffe0dddd).withOpacity(
                                0.7), // لون الحدود
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                            // جعل الحواف دائرية بصفر لإزالتها
                          ),
                        ),
                        child: const Text('إدارة المستخدمين',
                            style: TextStyle(color: Color(0xffb50218),
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(PromotionalPage());
                          },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size.fromHeight(80),
                          backgroundColor: const Color(0xffe0dddd).withOpacity(
                              0.7),
                          elevation: 18,
                          side: BorderSide(
                            width: 2,
                            color: const Color(0xffe0dddd).withOpacity(
                                0.7), // لون الحدود
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                            // جعل الحواف دائرية بصفر لإزالتها
                          ),
                        ),
                        child: const Text('إدارة العروض الترويجية',
                            style: TextStyle(color: Color(0xffb50218),
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(PackagePage());
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size.fromHeight(80),
                          backgroundColor: const Color(0xffb50218).withOpacity(
                              0.7),
                          elevation: 18,
                          side: BorderSide(
                            width: 2,
                            color: const Color(0xffe0dddd).withOpacity(
                                0.7), // لون الحدود
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                            // جعل الحواف دائرية بصفر لإزالتها
                          ),
                        ),
                        child: const Text('إدارة الباقات', style: TextStyle(
                            color: Color(0xffe0dddd),
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(RequestPage());
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size.fromHeight(80),
                          primary: const Color(0xffe0dddd).withOpacity(0.7),
                          elevation: 18,
                          side: BorderSide(
                            width: 2,
                            color: const Color(0xffe0dddd).withOpacity(
                                0.7), // لون الحدود
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                            // جعل الحواف دائرية بصفر لإزالتها
                          ),
                        ),
                        child: const Text('إدارة الطلبات', style: TextStyle(
                            color: Color(0xffb50218),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                width: 1000,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      width: 180, // ارتفاع المربع
                      height: 180, // عرض المربع
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // لون الظل الرمادي
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // التحريك الأفقي والعمودي للظل
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        child: InkWell(
                          onTap: () {
                            // يتم تنفيذ الكود المطلوب عند الضغط على المربع
                          },
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(Icons.wifi, color: Color(0xffb50219),size: 70,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: 'WIFI Packages'.split(' ').map((word) {
                                      return Text(
                                        word,
                                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                                      );
                                    }).toList(),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(top: 8.0),
                                  //   child: ElevatedButton(onPressed: (){},
                                  //       style: ElevatedButton.styleFrom(
                                  //         backgroundColor: Colors.green,
                                  //       ),
                                  //       child: Container(
                                  //           width: 40,
                                  //           child: Text("تعديل", style: TextStyle(color:Colors.white),))),
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      width: 180, // ارتفاع المربع
                      height: 180, // عرض المربع
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // لون الظل الرمادي
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // التحريك الأفقي والعمودي للظل
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        child: InkWell(
                          onTap: () {
                            // يتم تنفيذ الكود المطلوب عند الضغط على المربع
                          },
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(Icons.business_center_outlined, color: Color(0xffb50219),size: 70,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: 'Business Unlimited'.split(' ').map((word) {
                                      return Text(
                                        word,
                                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                                      );
                                    }).toList(),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(top: 8.0),
                                  //   child: ElevatedButton(onPressed: (){},
                                  //       style: ElevatedButton.styleFrom(
                                  //         backgroundColor: Colors.green,
                                  //       ),
                                  //       child: Container(
                                  //           width: 40,
                                  //           child: Text("تعديل", style: TextStyle(color:Colors.white),))),
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      width: 180, // ارتفاع المربع
                      height: 180, // عرض المربع
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // لون الظل الرمادي
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // التحريك الأفقي والعمودي للظل
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        child: InkWell(
                          onTap: () {
                            // يتم تنفيذ الكود المطلوب عند الضغط على المربع
                          },
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(Icons.home, color: Color(0xffb50219),size: 70,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: 'Home Unlimited'.split(' ').map((word) {
                                      return Text(
                                        word,
                                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                                      );
                                    }).toList(),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(top: 8.0),
                                  //   child: ElevatedButton(onPressed: (){},
                                  //       style: ElevatedButton.styleFrom(
                                  //         backgroundColor: Colors.green,
                                  //       ),
                                  //       child: Container(
                                  //           width: 40,
                                  //           child: Text("تعديل", style: TextStyle(color:Colors.white),))),
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      width: 180, // ارتفاع المربع
                      height: 180, // عرض المربع
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // لون الظل الرمادي
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // التحريك الأفقي والعمودي للظل
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        child: InkWell(
                          onTap: () {
                            // يتم تنفيذ الكود المطلوب عند الضغط على المربع
                          },
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(Icons.videogame_asset_rounded, color: Color(0xffb50219),size: 70,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: 'Gamer Packages'.split(' ').map((word) {
                                      return Text(
                                        word,
                                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                                      );
                                    }).toList(),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(top: 8.0),
                                  //   child: ElevatedButton(onPressed: (){},
                                  //       style: ElevatedButton.styleFrom(
                                  //         backgroundColor: Colors.green,
                                  //       ),
                                  //       child: Container(
                                  //           width: 40,
                                  //           child: Text("تعديل", style: TextStyle(color:Colors.white),))),
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      width: 180, // ارتفاع المربع
                      height: 180, // عرض المربع
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // لون الظل الرمادي
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // التحريك الأفقي والعمودي للظل
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        child: InkWell(
                          onTap: () {
                            // يتم تنفيذ الكود المطلوب عند الضغط على المربع
                          },
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(Icons.network_check_outlined, color: Color(0xffb50219),size: 70,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: 'ADSL Packages'.split(' ').map((word) {
                                      return Text(
                                        word,
                                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                                      );
                                    }).toList(),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(top: 8.0),
                                  //   child: ElevatedButton(onPressed: (){},
                                  //       style: ElevatedButton.styleFrom(
                                  //         backgroundColor: Colors.green,
                                  //       ),
                                  //       child: Container(
                                  //           width: 40,
                                  //           child: Text("تعديل", style: TextStyle(color:Colors.white),))),
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ]
        )
    );
  }
}
