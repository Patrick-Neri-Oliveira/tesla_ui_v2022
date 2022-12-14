import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/constant.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/screens/ac_screen/ac_screen_page.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/screens/home_screen/components/information_panel.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/screens/home_screen/components/navigation_history.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/screens/home_screen/components/status_panel.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/screens/home_screen/components/title.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/widgets/buttons/nav_button.dart';
import 'package:tesla_ui_pullrequest_patrickneriolivera/widgets/scaffolds/base_scaffold.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var isOn; var onTab;
    return BaseScaffold(
        appBarContent: [
          NavButton(
              isOn: isOn,
              onTab: onTab,
              width: 100.0,
              height: 100.0,
              child: SvgPicture.asset(
                "assets/svgs/page_two_user.svg",
                width: 17.0,
                height: 17.0,
              ),
          ),
          Expanded(child: HomeScreenTitle(
              upperTitle: "Tesla",
              title: "Cybertuck",
            ),
          ),
          NavButton(
            isOn: isOn,
            onTab: onTab,
            width: 100.0,
            height: 100.0,
            child: SvgPicture.asset(
              "assets/svgs/page_one_setting icon.svg",
              width: 17.0,
              height: 17.0,
            ),
          ),
        ],
        body: SlidingUpPanel(
          minHeight: 120.0,
          maxHeight: MediaQuery.of(context).size.height * 0.85,
          color: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(bottom: 200.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(height: 20.0),
                  Image.asset(
                    "assets/images/page_two_car.png",
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.center,
                  ),
                  Container(
                    transform: Matrix4.translationValues(0, -40.0, 0),
                    child: StatusPanel(),
                  ),
                  Container(
                    transform: Matrix4.translationValues(0, -30.0, 0),
                    child: InformationPanel(),
                  ),
                  Container(
                    transform: Matrix4.translationValues(0, -30.0, 0),
                    child: NavigationHistory(),
                  ),
                ],
              ),
            ),
          ),
          panel: ACScreenPage(),
        ),
    );
  }
}


