import 'dart:ffi';
import 'package:flutter/material.dart';
import 'profile_view.dart';
import 'log_view.dart';
import 'scan_view.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  static String tag = 'Main-Page';
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("BoundBea",
            style: GoogleFonts.montserrat(fontSize: 24, color: Colors.white)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.red,
            Colors.redAccent,
          ])),
        ),
        bottom: _buildTabBar(),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          ProfilePage(),
          ScanPage(),
          LogPage(),
        ],
      ),
    );
  }

  TabBar _buildTabBar() {
    return TabBar(
      controller: _tabController,
      labelColor: Colors.white,
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.person_pin),
          // text: "PROFILE",
        ),
        Tab(
          icon: Icon(Icons.qr_code_scanner),
        ),
        Tab(
          icon: Icon(
            Icons.connect_without_contact,
          ),
        ),
      ],
    );
  }
}
