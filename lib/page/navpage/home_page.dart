import 'package:e_commerce_app/colors.dart';
import 'package:e_commerce_app/widgets/app_large_text.dart';
import 'package:e_commerce_app/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Top Bar
          Container(
            padding: const EdgeInsets.only(
              top: 70,
              left: 20,
            ),
            child: Row(
              children: [
                Icon(Icons.menu_rounded, size: 30, color: Colors.black54),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          // Text
          Container(
              margin: EdgeInsets.only(left: 20),
              child: AppLargeText(text: 'Text 1')),
          const SizedBox(height: 30),
          //Tab Bar
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: EdgeInsets.only(left: 20, right: 20),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator:
                    CircleTabIndicator(color: AppColors.mainColor, radius: 4),
                tabs: [
                  Tab(text: 'Text 1'),
                  Tab(text: 'Text 2'),
                  Tab(text: 'Text 3'),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(right: 16, top: 10),
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage('assets/images/welcome_one.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
                Text('TextBar 2'),
                Text('TextBar 3'),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLargeText(text: 'Explore text', size: 22),
                AppText(text: 'See All', color: AppColors.textColor1)
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 100,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 20),
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/welcome_one.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          child: AppText(
                            text: 'Text1',
                            color: AppColors.textColor2,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainted(color: color, radius: radius);
  }
}

class _CirclePainted extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainted({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;

    final Offset circleOffset = Offset(
        configuration.size!.width / 2, configuration.size!.height - radius);

    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
