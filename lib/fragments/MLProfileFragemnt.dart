import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:medilab_prokit/components/MLProfileBottomComponent.dart';
import 'package:medilab_prokit/utils/MLColors.dart';
import 'package:medilab_prokit/utils/MLImage.dart';

class MLProfileFragment extends StatefulWidget {
  static String tag = '/MLProfileFragment';

  @override
  MLProfileFragmentState createState() => MLProfileFragmentState();
}

class MLProfileFragmentState extends State<MLProfileFragment> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mlPrimaryColor,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: mlPrimaryColor,
            automaticallyImplyLeading: false,
            expandedHeight: 225,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: mlColorDarkBlue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(child: Image.asset(ml_ic_profile_picture!), radius: 40.0, backgroundColor: mlColorCyan),
                    8.height,
                    Text('Kaixa Pham', style: boldTextStyle(color: white, size: 24)),
                    4.height,
                    Text('johnsmith@gmail.com', style: secondaryTextStyle(color: white, size: 16)),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: MLProfileBottomComponent(),
          )

        ],
      ),
    );
  }
}
