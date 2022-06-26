import 'package:backdrop/backdrop.dart';
import 'package:e_commerce_app/colors.dart';
import 'package:e_commerce_app/widgets/app_buttons.dart';
import 'package:e_commerce_app/widgets/app_large_text.dart';
import 'package:e_commerce_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

import 'components/buy_button_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int selectedIndex = -1;
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
          appBar: BackdropAppBar(
            title: const Text("Backdrop Example"),
            centerTitle: true,
          ),
          backLayer: Center(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/welcome_one.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          subHeader: const BackdropSubHeader(
            title: Text("Sub Header"),
          ),
          frontLayer: Stack(
            children: [
              Positioned(
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(text: 'Text', color: Colors.black54),
                          AppLargeText(
                              text: '\$ 250', color: AppColors.mainColor)
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(Icons.location_on_outlined,
                              color: AppColors.mainColor),
                          AppText(
                            text: 'Location',
                            color: AppColors.textColor1,
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(Icons.star_outlined,
                                  color: index < gottenStars
                                      ? AppColors.starColor
                                      : AppColors.textColor2);
                            }),
                          ),
                          const SizedBox(width: 10),
                          AppText(text: '(4.0)', color: AppColors.textColor2),
                        ],
                      ),
                      const SizedBox(height: 25),
                      AppLargeText(
                        text: 'Text 2',
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      const SizedBox(height: 5),
                      AppText(text: 'SubText', color: AppColors.mainTextColor),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: AppButtonsWidget(
                                size: 50,
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                backgroundColor: selectedIndex == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                borderColor: selectedIndex == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                text: (index + 1).toString(),
                                // isIcon: false,
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 20),
                      AppLargeText(
                        text: 'Text 3',
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      const SizedBox(height: 10),
                      AppLargeText(
                        text: 'Subtext',
                        color: AppColors.mainTextColor,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    OutlinedButton(
                        onPressed: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor:
                              isLiked ? AppColors.mainColor : Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          fixedSize: const Size(64, 64),
                        ),
                        child: isLiked
                            ? Icon(Icons.favorite_outlined, color: Colors.white)
                            : Icon(Icons.favorite_border_outlined,
                                color: AppColors.textColor1)),
                    const SizedBox(width: 10),
                    BuyButtonWidget(
                      width: MediaQuery.of(context).size.width - 114,
                    )
                  ],
                ),
              )
            ],
          )
    );
  }
}
