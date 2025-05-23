import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:medilab_prokit/components/MLHomeBottomComponent.dart';
import 'package:medilab_prokit/components/MLHomeTopComponent.dart';

class MLHomeFragment extends StatefulWidget {
  static String tag = '/MLHomeFragment';

  @override
  _MLHomeFragmentState createState() => _MLHomeFragmentState();
}

class _MLHomeFragmentState extends State<MLHomeFragment> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          MLHomeTopComponent(),
          16.height,
          MLHomeBottomComponent(),
          64.height,
        ],
      ),
    );
  }
}
