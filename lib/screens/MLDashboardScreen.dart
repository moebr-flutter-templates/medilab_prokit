import 'package:flutter/material.dart';
import 'package:medilab_prokit/components/MLBottomNavigationBarWidget.dart';
import 'package:medilab_prokit/fragments/MLCalendarFragment.dart';
import 'package:medilab_prokit/fragments/MLChatFragment.dart';
import 'package:medilab_prokit/fragments/MLHomeFragment.dart';
import 'package:medilab_prokit/fragments/MLNotificationFragment.dart';
import 'package:medilab_prokit/fragments/MLProfileFragemnt.dart';
import 'package:medilab_prokit/utils/MLColors.dart';
import 'package:medilab_prokit/utils/MLCommon.dart';

class MLDashboardScreen extends StatefulWidget {
  static String tag = '/MLDashboardScreen';

  @override
  _MLDashboardScreenState createState() => _MLDashboardScreenState();
}

class _MLDashboardScreenState extends State<MLDashboardScreen> {
  int currentWidget = 0;
  List<Widget> widgets = [
    MLHomeFragment(),
    MLChatFragment(),
    MLCalendarFragment(),
    MLNotificationFragment(),
    MLProfileFragment(),
  ];

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void dispose() {
    changeStatusColor(mlPrimaryColor);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: widgets[currentWidget],
        bottomNavigationBar: showBottomDrawer(),
      ),
    );
  }

  Widget showBottomDrawer() {
    return MLBottomNavigationBarWidget(
      index: currentWidget,
      onTap: (index) {
        setState(() {});
        currentWidget = index;
      },
    );
  }
}
