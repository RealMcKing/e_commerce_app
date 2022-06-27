import 'package:e_commerce_app/colors.dart';
import 'package:flutter/material.dart';
import 'components/widgets/circle_tab_indicator_widget.dart';
import 'components/widgets/explore_button_widget.dart';
import 'components/widgets/explore_widget.dart';
import 'components/widgets/section_title_widget.dart';
import 'components/widgets/tab_bar_view_widget.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage>
    with TickerProviderStateMixin {
  static const List items = [
    [Colors.red, Icons.apple_rounded, 'Clothes'],
    [Colors.green, Icons.class_rounded, 'Electronics'],
    [Colors.purple, Icons.bolt_rounded, 'Furniture'],
    [Colors.orange, Icons.chair_rounded, 'Shoes'],
    [Colors.teal, Icons.cloud_rounded, 'Others']
  ];

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          SelectionTitleWidget(text: 'Discover'),
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              labelPadding: const EdgeInsets.symmetric(horizontal: 20),
              controller: tabController,
              labelColor: Colors.black,
              labelStyle: const TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700),
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicator:
                  CircleTabIndicator(color: AppColors.mainColor, radius: 4),
              tabs: const [
                Tab(text: 'Text 1'),
                Tab(text: 'Text 2'),
                Tab(text: 'Text 3'),
              ],
            ),
          ),
          Container(
            height: 290,
            width: double.maxFinite,
            child: TabBarView(
              controller: tabController,
              children: [
                ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return const TabBarViewWidget();
                  },
                ),
                const Text('TextBar 2'),
                const Text('TextBar 3'),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const ExplorerWidget(),
          const SizedBox(height: 12),
          SizedBox(
            height: 100,
            width: double.maxFinite,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return ExploreTextWidget(item: items[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
