import 'package:boss/common/Constant.dart';
import 'package:flutter/material.dart';

import '../component/IconTab.dart';

class BoosApp extends StatefulWidget {
  const BoosApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

const double _kTabTextSize = 11.0;
const int INDEX_JOB = 0;
const int INDEX_COMPANY = 1;
const int INDEX_MESSAGE = 2;
const int INDEX_MINE = 3;
Color _kTabTextDefaultColor = Colors.grey[900]!;

class HomeState extends State<BoosApp> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  late TabController _controller;
  late VoidCallback onChanged;

  @override
  void initState() {
    super.initState();
    _controller =
        TabController(initialIndex: _currentIndex, length: 4, vsync: this);

    onChanged = () {
      setState(() {
        _currentIndex = _controller.index;
      });
      _controller.addListener(onChanged);
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [],
        controller: _controller,
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          tabs: <IconTab>[
            IconTab(
                "职位",
                _currentIndex == INDEX_JOB
                    ? "assets/images/ic_main_tab_company_pre.png"
                    : "assets/images/ic_main_tab_company_nor.png",
                _currentIndex == INDEX_JOB
                    ? Constant.mainThemeColor
                    : _kTabTextDefaultColor),
            IconTab(
                "公司",
                _currentIndex == INDEX_COMPANY
                    ? "assets/images/ic_main_tab_contacts_pre.png"
                    : "assets/images/ic_main_tab_contacts_nor.png",
                _currentIndex == INDEX_COMPANY
                    ? Constant.mainThemeColor
                    : _kTabTextDefaultColor),
            IconTab(
                "消息",
                _currentIndex == INDEX_MESSAGE
                    ? "assets/images/ic_main_tab_find_pre.png"
                    : "assets/images/ic_main_tab_find_nor.png",
                _currentIndex == INDEX_MESSAGE
                    ? Constant.mainThemeColor
                    : _kTabTextDefaultColor),
            IconTab(
                "我的",
                _currentIndex == INDEX_MINE
                    ? "assets/images/ic_main_tab_my_pre.png"
                    : "assets/images/ic_main_tab_my_nor.png",
                _currentIndex == INDEX_MINE
                    ? Constant.mainThemeColor
                    : _kTabTextDefaultColor)
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
