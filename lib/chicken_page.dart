import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:miu_lanches/components/base_card.dart';
import 'package:miu_lanches/components/base_text_field.dart';
import 'package:miu_lanches/components/custom_bottom_navigation_bar.dart';
import 'package:miu_lanches/components/info_food_card.dart';

class ChickenPage extends StatelessWidget {
  const ChickenPage({super.key});

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
                  top: 40,
                  bottom: 25,
                ),
                child: BaseTextField(
                  prefixIcon: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 20,
                  ),
                  suffixIcon: Icon(Icons.close),
                  fillColor: Color(0xFFE1E1E1),
                  hoverColor: Color(0xFFE1E1E1),
                  centerText: false,
                  text: "Chicken",
                  borderRadius: 10,
                  hintText: "Chicken",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Row(
                      children: [
                        _cardIconFood(
                          icon: FontAwesomeIcons.pizzaSlice,
                          title: "Lunch",
                        ),
                        _cardIconFood(
                          icon: FontAwesomeIcons.bowlFood,
                          title: "Dinner",
                        ),
                        _cardIconFood(
                          icon: FontAwesomeIcons.burger,
                          title: "Breakfast",
                        ),
                        _cardIconFood(
                          icon: FontAwesomeIcons.iceCream,
                          title: "Dessert",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "Search Result “ Chicken”",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 21,
                      color: Color(0xFFFF640D),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  bottom: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Store near by",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 17,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 235,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Row(
                      children: [
                        _infoPlace(
                          url:
                              "https://img.freepik.com/vector-gratis/lindo-restaurante-dibujado-mano_23-2147567265.jpg",
                          title: "Raj non-veg store",
                          reviews: "80 reviews",
                          time: "15mins",
                        ),
                        _infoPlace(
                          url:
                              "https://img.freepik.com/vetores-gratis/restaurante-italiano-em-design-plano_23-2147560162.jpg?semt=ais_hybrid",
                          title: "Fastspot store",
                          reviews: "90 reviews",
                          time: "45mins",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Chicken dishes",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 21,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.8),
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
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BaseCard(
        backgroundColor: Colors.white,
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
              CustomBottomNavigationBar(
                colorContainer: Colors.white,
                icon: Icons.home_outlined,
                colorIcon: Color(0xFF2E3A59),
                sizeIcon: 30,
              ),
              CustomBottomNavigationBar(
                colorContainer: Colors.white,
                icon: FontAwesomeIcons.heart,
                colorIcon: Color(0xFF2E3A59),
                sizeIcon: 24,
              ),
              CustomBottomNavigationBar(
                colorContainer: Color(0xFFECECEC),
                icon: FontAwesomeIcons.magnifyingGlass,
                colorIcon: Color(0xFFFF640D),
                sizeIcon: 20,
              ),
              CustomBottomNavigationBar(
                colorContainer: Colors.white,
                icon: Icons.person_outline_rounded,
                colorIcon: Color(0xFF2E3A59),
                sizeIcon: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardIconFood({
    required IconData icon,
    required String title,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 20,
          ),
          child: BaseCard(
            backgroundColor: Color(0xFFFF640D),
            borderRadius: BorderRadius.circular(10),
            height: 77,
            width: 77,
            child: Icon(
              icon,
              size: 46,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            right: 25,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 17,
              color: Colors.black.withOpacity(0.8),
            ),
          ),
        ),
      ],
    );
  }

  Widget _infoPlace({
    required String url,
    required String title,
    required String reviews,
    required String time,
  }) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
      ),
      child: BaseCard(
        backgroundColor: Colors.white,
        borderRadius: BorderRadius.circular(5),
        height: 230,
        width: 200,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      url,
                      width: 125,
                      height: 170,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      _iconStar(),
                      _iconStar(),
                      _iconStar(),
                      _iconStar(),
                    ],
                  ),
                  Text(
                    reviews,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Delivery time ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    time,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 11,
                      color: Colors.black,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconStar() {
    return Icon(
      Icons.star,
      color: Color(0xFFFBE313),
      size: 20,
    );
  }
}
