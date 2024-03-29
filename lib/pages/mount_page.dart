import 'package:flutter/material.dart';
import '../GLOBAL VARIABLES SECTION/variables.dart';
import '../models/app_category_list.dart';
import '../widgets/app_bottom_bar.dart';
import '../widgets/app_header.dart';
import '../widgets/app_mount_lw.dart';
import '../widgets/app_search.dart';

class MountsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Icon(
            Icons.terrain,
            color: mainColor,
            size: 40,
          ),
        ),
        actions: const [
          SizedBox(
            width: 40,
            height: 40,
          ),
        ],
        iconTheme: IconThemeData(color: mainColor),
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(30),
          color: mainColor,
          alignment: Alignment.bottomLeft,
          child: const Icon(Icons.terrain, color: Colors.white, size: 80),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeader(),
          AppSearch(),
          Expanded(
            child: AppMountListView()
          ),
          AppCategoryList(),
          AppBottomBar(),
        ],
      ),
    );
  }
}
