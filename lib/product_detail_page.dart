import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:miu_lanches/components/base_card.dart';
import 'package:miu_lanches/components/base_text_field.dart';
import 'package:miu_lanches/components/info_food_card.dart';
import 'package:miu_lanches/controllers/product_detail_controller.dart';
import 'package:provider/provider.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 35,
                  bottom: 24,
                ),
                child: BaseCard(
                  width: 320,
                  height: 250,
                  borderRadius: BorderRadius.circular(5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      "https://veganhuggs.com/wp-content/uploads/2020/03/easy-vegan-chickpea-curry-5.jpg",
                      width: 320,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                "Vegan Chickpea Curry",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 27,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 15,
                ),
                child: Row(
                  children: [
                    _iconStar(size: 28),
                    _iconStar(size: 28),
                    _iconStar(size: 28),
                    _iconStar(size: 28),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        "4.0 ( 80 reviews )",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: Colors.black.withOpacity(0.8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "Seller: Raj Kitchen",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 17,
                  bottom: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        _setAmountButton(
                            icon: Icons.remove,
                            onPressed: () {
                              context
                                  .read<ProductDetailController>()
                                  .decrement();
                            }),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          child: SizedBox(
                            width: 35,
                            height: 35,
                            child: BaseTextField(
                              borderRadius: 5,
                              text: context
                                  .watch<ProductDetailController>()
                                  .counter
                                  .toString(),
                              centerText: true,
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 21,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        _setAmountButton(
                            icon: Icons.add,
                            onPressed: () {
                              context
                                  .read<ProductDetailController>()
                                  .increment();
                            }),
                      ],
                    ),
                    BaseCard(
                      width: 83,
                      height: 37,
                      backgroundColor: Color(0xFFFF640D),
                      borderRadius: BorderRadius.circular(5),
                      child: Center(
                        child: Text(
                          "Buy now",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "Product Descriptions",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 21,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 15,
                ),
                child: Text(
                  "Loaded with protein, this vegan chickpea curry is mostly made with pantry staples. Throw in fresh or frozen spinach for a pop of green, and you’ve got dinner. (via Brit + Co)",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.8),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Reviews",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 21,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseCard(
                      width: 44,
                      height: 44,
                      borderRadius: BorderRadius.circular(100),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          "https://img.freepik.com/vetores-premium/icone-de-jovem-homem-dos-desenhos-animados_24908-23727.jpg",
                          width: 44,
                          height: 44,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 19,
                          bottom: 17,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rohit kumar",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    _iconStar(size: 19),
                                    _iconStar(size: 19),
                                    _iconStar(size: 19),
                                    _iconStar(size: 19),
                                  ],
                                ),
                                Text(
                                  "19-mar-2020",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 11,
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "A perfect combination of mutton and rice. It's aroma and taste were fantastic. They also provided raita with it. Overall I would not recommend this restaurant",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black.withOpacity(0.8),
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Suggestion dish",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 27,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: Color(0xFFFF640D),
                      ),
                    )
                  ],
                ),
              ),
              InfoFoodCard(
                url:
                    "https://veganhuggs.com/wp-content/uploads/2020/03/easy-vegan-chickpea-curry-5.jpg",
                title: "Vegan Chickpea Curry",
                subtitle: "Moong dal (split mung beans) are...",
                value: "Rs 150",
              ),
              InfoFoodCard(
                url:
                    "https://savvybites.co.uk/wp-content/uploads/2021/01/Cauliflower-Curry-Topaz-1.jpg",
                title: "One-Pot Cauliflower",
                subtitle: "Biryani is a rice dish that’s spiced...",
                value: "Rs 230",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BaseCard(
        backgroundColor: Colors.white,
        // borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 20,
            top: 8,
            left: 23,
            right: 23,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _iconChoice(
                colorContainer: Color(0xFFECECEC),
                colorIcon: Color(0xFFFF640D),
                icon: Icons.home_outlined,
                sizeIcon: 30,
              ),
              _iconChoice(
                colorContainer: Colors.white,
                colorIcon: Color(0xFF2E3A59),
                icon: FontAwesomeIcons.heart,
                sizeIcon: 24,
              ),
              _iconChoice(
                colorContainer: Colors.white,
                colorIcon: Color(0xFF2E3A59),
                icon: FontAwesomeIcons.magnifyingGlass,
                sizeIcon: 20,
              ),
              _iconChoice(
                colorContainer: Colors.white,
                colorIcon: Color(0xFF2E3A59),
                icon: Icons.person_outline_rounded,
                sizeIcon: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconStar({
    required double size,
  }) {
    return Icon(
      Icons.star,
      size: size,
      color: Color(0xFFFBE413),
    );
  }

  Widget _setAmountButton({
    required IconData? icon,
    required Function() onPressed,
  }) {
    return IconButton(
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        backgroundColor: Color(0xFFFF640D),
      ),
      iconSize: 14,
      padding: EdgeInsets.zero,
      onPressed: () {
        onPressed.call();
      },
      icon: Icon(
        icon,
        size: 30,
        color: Colors.white,
        // color: Color(0xFFFF640D),
      ),
    );
  }

  // Widget _infoFood({
  Widget _iconChoice(
      {required Color? colorContainer,
      required IconData? icon,
      required Color? colorIcon,
      required double? sizeIcon}) {
    return BaseCard(
      height: 46,
      width: 46,
      borderRadius: BorderRadius.circular(5),
      backgroundColor: colorContainer,
      child: Icon(
        icon,
        color: colorIcon,
        size: sizeIcon,
      ),
    );
  }
}
