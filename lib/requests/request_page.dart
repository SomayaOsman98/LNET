import 'package:admin_lnet/customers/pages/customer_page.dart';
import 'package:admin_lnet/packages/package_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../promotional/pages/promotional_page.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

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
                  icon: const Icon(Icons.person_pin_rounded, size: 40, color: Color(0xffb50218)),
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
        leading:  Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Column(
            children: [
              IconButton(
                icon: const Icon(Icons.exit_to_app_outlined, size: 40, color: Color(0xffb50218)),
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
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(CustomerPage());
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromHeight(80), backgroundColor: const Color(0xffe0dddd).withOpacity(0.7),
                        elevation: 18,
                        side: BorderSide(
                          width: 2,
                          color:const Color(0xffe0dddd).withOpacity(0.7),// لون الحدود
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          // جعل الحواف دائرية بصفر لإزالتها
                        ),
                      ),
                      child: const Text('إدارة المستخدمين' ,style: TextStyle(color: Color(0xffb50218), fontWeight: FontWeight.bold,fontSize:18)),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(PromotionalPage());
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromHeight(80), backgroundColor: const Color(0xffe0dddd).withOpacity(0.7),
                        elevation: 18,
                        side: BorderSide(
                          width: 2,
                          color:const Color(0xffe0dddd).withOpacity(0.7),// لون الحدود
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          // جعل الحواف دائرية بصفر لإزالتها
                        ),
                      ),
                      child: const Text('إدارة العروض الترويجية', style: TextStyle(color: Color(0xffb50218), fontWeight: FontWeight.bold,fontSize:18)),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(PackagePage());
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromHeight(80), backgroundColor: const Color(0xffe0dddd).withOpacity(0.7),
                        elevation: 18,
                        side: BorderSide(
                          width: 2,
                          color:const Color(0xffe0dddd).withOpacity(0.7),// لون الحدود
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          // جعل الحواف دائرية بصفر لإزالتها
                        ),
                      ),
                      child: const Text('إدارة الباقات' ,style: TextStyle(color: Color(0xffb50218), fontWeight: FontWeight.bold,fontSize:18)),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(RequestPage());
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromHeight(80), backgroundColor: const Color(0xffb50218).withOpacity(0.7),
                        elevation: 18,
                        side: BorderSide(
                          width: 2,
                          color:const Color(0xffe0dddd).withOpacity(0.7),// لون الحدود
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          // جعل الحواف دائرية بصفر لإزالتها
                        ),
                      ),
                      child: const Text('إدارة الطلبات', style: TextStyle(color: Color(0xffe0dddd), fontWeight: FontWeight.bold,fontSize:18)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              width: 600,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // إدارة العروض الترويجية
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromHeight(80), backgroundColor: const Color(0xffe0dddd).withOpacity(0.7),
                    elevation: 18,
                    side: BorderSide(
                      width: 2,
                      color:const Color(0xffe0dddd).withOpacity(0.7),// لون الحدود
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                      // جعل الحواف دائرية بصفر لإزالتها
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 140.0),
                        child: const Text('طلب تعبئة باقة 40DLY', style: TextStyle(color: Color(0xffb50218), fontWeight: FontWeight.bold,fontSize:18)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Container(
                                width: 40,
                                child: Text("موافقة", style: TextStyle(color:Colors.white),))
                        ),
                      ),
                      ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          child: Container(
                              width: 40,
                              child: Text("رفض", style: TextStyle(color:Colors.white),))
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 600,
              margin: EdgeInsets.symmetric(vertical: 4),
              child: Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // إدارة العروض الترويجية
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromHeight(80), backgroundColor: const Color(0xffe0dddd).withOpacity(0.7),
                    elevation: 18,
                    side: BorderSide(
                      width: 2,
                      color:const Color(0xffe0dddd).withOpacity(0.7),// لون الحدود
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                      // جعل الحواف دائرية بصفر لإزالتها
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 140.0),
                        child: const Text('طلب تعبئة باقة 60DLY', style: TextStyle(color: Color(0xffb50218), fontWeight: FontWeight.bold,fontSize:18)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Container(
                                width: 40,
                                child: Text("موافقة", style: TextStyle(color:Colors.white),))
                        ),
                      ),
                      ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          child: Container(
                              width: 40,
                              child: Text("رفض", style: TextStyle(color:Colors.white),))
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]
      ),
    );
  }
}
