import 'package:admin_lnet/customers/pages/customer_page.dart';
import 'package:admin_lnet/data/promotional/model/promotionals_model.dart';
import 'package:admin_lnet/promotional/pages/add_promotional.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../packages/package_page.dart';
import '../../requests/request_page.dart';

class PromotionalPage extends StatelessWidget {
  const PromotionalPage({super.key});

  @override
  Widget build(BuildContext context) {
    CollectionReference promotional =FirebaseFirestore.instance.collection('Promotional');
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
                        child: const Text('إدارة العروض الترويجية', style: TextStyle(
                            color: Color(0xffe0dddd),
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
                        child: const Text('إدارة الباقات', style: TextStyle(
                            color: Color(0xffb50218),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),),
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
              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: Container(
                  width: 400,
                  height: 180,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FutureBuilder<QuerySnapshot>(
                        future: promotional.get(),
                        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.hasError) {
                            return Text("حدث خطأ ما");
                          }
                          if (snapshot.connectionState == ConnectionState.done) {
                            var map = snapshot.data!.docs.map((doc) {
                              var m = doc.data() as Map<String, dynamic>;
                              m["id"] = doc.id;
                              return m;
                            }).toList();
                            var result = Promotionals.fromJson(map);

                            return Container(
                              width: double.infinity,
                              height: 700,
                              child: ListView.builder(
                                itemCount: result.promotionals?.length ?? 0,
                                itemBuilder: (context, index) {
                                  var prom = result.promotionals![index];

                                  return Container(
                                    margin: EdgeInsets.all(10),
                                    padding: EdgeInsets.all(10),
                                    color: Colors.grey[100],
                                    width: double.infinity,
                                    height: 100,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Material(
                                          color: Color(0xfff3f3f3),
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

                                                    Column(
                                                      children: [
                                                        Text(prom.address!,
                                                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Color(0xffbe1e2d)),
                                                        ),
                                                        Text(prom.details!,
                                                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Color(0xffbe1e2d)),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 8.0),
                                                          child: ElevatedButton(onPressed: (){},
                                                              style: ElevatedButton.styleFrom(
                                                                backgroundColor: Colors.green,
                                                              ),
                                                              child: Container(
                                                                  width: 40,
                                                                  child: Text(" تعديل", style: TextStyle(color:Colors.white),))),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 8.0,right: 4),
                                                          child: ElevatedButton(onPressed: (){},
                                                              style: ElevatedButton.styleFrom(
                                                                backgroundColor: Colors.red,
                                                              ),
                                                              child: Container(
                                                                  width: 40,
                                                                  child: Text(" حذف", style: TextStyle(color:Colors.white),))),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            );
                          }

                          return Text("جاري التحميل");
                        },
                      ),

                      Material(
                        color: Color(0xfff3f3f3),
                        borderRadius: BorderRadius.circular(8),
                        child: InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: Container(
                                    width: 400,
                                    height: 250,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: AddPromotional(),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Center(
                              child: Column(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(top:20.0),
                                    child: Column(
                                      children: [
                                        Icon(Icons.add, size: 60, color: Color(0xffbe1e2d)),
                                        Text("إضافة عرض جديد",
                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: Color(0xffbe1e2d)),
                                        ),
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
              ),



            ]
        )
    );
  }
}
