import 'package:admin_lnet/customers/pages/customer_page.dart';
import 'package:flutter/material.dart';

import '../../packages/package_page.dart';

class MasterPage extends StatefulWidget {
  const MasterPage({Key? key}) : super(key: key);

  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  bool showSearchBox = false;
  String search = "";

  String title = "CustomerPage";
  int index = 0;

  Widget body = const CustomerPage();

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        {
          body = const CustomerPage();
          title = "CustomerPage";
        }
        break;
      case 1:
        {
          body = PackagePage();
          title = "PackagePage";
        }
        break;
    }

    return Scaffold(
      body: body,
    );
  }
}