import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/page/detail_page/components/app_bar_widget.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';
import '../../widgets/app_large_text.dart';
import '../../widgets/app_text.dart';
import 'components/buy_button_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final List<String> images = [
    'assets/images/welcome_one.png',
    'assets/images/welcome_two.png',
    'assets/images/welcome_three.png'
  ];

  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: LocalAppBarWidget(),
      ),
      body: _body(),
      floatingActionButton: _floatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _body() {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: <Widget>[
        CarouselSlider.builder(
          itemCount: images.length,
          itemBuilder: (context, index, realIndex) {
            final image = images[index];
            return buildImage(image, index);
          },
          options: CarouselOptions(
              height: MediaQuery.of(context).size.width,
              enlargeStrategy: CenterPageEnlargeStrategy.height),
        ),
        const SizedBox(height: 12.0),
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: AppColors.mainColor,
                      minimumSize: Size.zero, // Set this
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Text(
                          'Clothes',
                          style: TextStyle(
                              fontSize: 16, color: AppColors.mainColor),
                        ),
                      ],
                    ),
                  ),
                  AppText(text: '0000201'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width *0.6,
                    child: Text(
                      'Incredible Steel Bike',
                      style: TextStyle(color: Colors.black54, fontSize: 24, ),maxLines: 3,
                    ),
                  ),
                  AppLargeText(text: '\$ 38', color: AppColors.mainColor)
                ],
              ),
              const SizedBox(height: 8),
              AppLargeText(
                text: 'Description',
                color: Colors.black54,
                size: 20,
              ),
              const SizedBox(height: 8),
              AppText(
                size: 16,
                text:
                    "The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality",
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildImage(String image, int index) => Container(
        color: Colors.grey,
        width: double.infinity,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      );

  Widget _floatingActionButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              primary: AppColors.mainColor,
              backgroundColor: _isLiked ? AppColors.mainColor : Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              fixedSize: const Size(64, 64),
            ),
            child: _isLiked
                ? const Icon(Icons.favorite_outlined, color: Colors.white)
                : const Icon(Icons.favorite_border_outlined,
                    color: AppColors.textColor1)),
        const SizedBox(width: 10),
        BuyButtonWidget(
          width: MediaQuery.of(context).size.width - 114,
        )
      ],
    );
  }

  void checkLikes() {
    _isLiked = !_isLiked;
  }
}
