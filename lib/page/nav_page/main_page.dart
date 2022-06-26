import 'package:e_commerce_app/page/nav_page/discover_page/home_page.dart';
import 'package:e_commerce_app/page/nav_page/search_page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../colors.dart';
import 'my_page/my_page.dart';
import 'bar_item_page/bar_item_page.dart';
import 'components/top_app_bar_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const DiscoverPage(),
    const BarItemPage(),
    const SearchPage(),
    const MyPage(),
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80), child: TopAppBarWidget()),
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: AppColors.mainColor,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: (SvgPicture.asset('assets/icons/discover.svg',
                  width: 14,
                  color: currentIndex == 0
                      ? AppColors.mainColor
                      : Colors.grey.withOpacity(0.5))),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: (SvgPicture.asset('assets/icons/stats.svg',
                  width: 14,
                  color: currentIndex == 1
                      ? AppColors.mainColor
                      : Colors.grey.withOpacity(0.5))),
              label: 'Stats',
            ),
            BottomNavigationBarItem(
              icon: (SvgPicture.asset('assets/icons/search.svg',
                  width: 14,
                  color: currentIndex == 2
                      ? AppColors.mainColor
                      : Colors.grey.withOpacity(0.5))),
              label: 'Stats',
            ),
            BottomNavigationBarItem(
              icon: (SvgPicture.asset('assets/icons/user.svg',
                  width: 14,
                  color: currentIndex == 3
                      ? AppColors.mainColor
                      : Colors.grey.withOpacity(0.5))),
              label: 'Stats',
            ),
          ],
        ),
      ),
    );
  }
}
