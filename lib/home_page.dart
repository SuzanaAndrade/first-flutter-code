import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:miu_lanches/components/base_card.dart';
import 'package:miu_lanches/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 27,
          right: 25,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 35,
                  bottom: 16,
                ),
                child: Text(
                  "Hello, Abhishek.",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 36,
                    color: Color(0xFF2F2E41),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "What do you want to eat?",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 21,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
              Container(
                height: 43,
                margin: const EdgeInsets.only(
                  top: 38,
                  bottom: 33,
                ),
                child: TextField(
                  // maxLines: 1,
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(
                      size: 23,
                      FontAwesomeIcons.magnifyingGlass,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    // iconColor: Colors.black.withOpacity(0.6),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    fillColor: Color(0xFFE1E1E1),
                    hoverColor: Color(0xFFE1E1E1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 115,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: controller.getCategories().length,
                  itemBuilder: (context, index) {
                    final category = controller.getCategories()[index];
                    return _cardFood(
                      title: category.name,
                      urlImage: category.url,
                    );
                  },
                ),

                /* 
                ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: [
                    _cardFood(
                      icon: FontAwesomeIcons.pizzaSlice,
                      title: "Dinner",
                    ),
                    _cardFood(
                      icon: FontAwesomeIcons.bowlFood,
                      title: "Lunch",
                    ),
                    _cardFood(
                      icon: FontAwesomeIcons.burger,
                      title: "Breakfast",
                    ),
                    _cardFood(
                      icon: FontAwesomeIcons.iceCream,
                      title: "Dessert",
                    ),
                  ],
                ),
                */
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 29,
                  bottom: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today’s special ",
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
              SizedBox(
                height: 190,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _infoFood(
                          url:
                              "https://eatinginstantly.com/wp-content/uploads/2019/03/Instant-Pot-Chickpea-Curry-11.jpg",
                          title: "Vegan Chickpea Curry",
                          subtitle: "Loaded with protein",
                          value: "Rs 150",
                        ),
                        _infoFood(
                          url:
                              "https://noshingwiththenolands.com/wp-content/uploads/2022/12/Coconut-Chickpea-Curry-overhead-further-away-6.jpg",
                          title: "Carrot Chickpea Curry",
                          subtitle: "Carrots lend an earthy sweetness",
                          value: "Rs 250",
                        ),
                      ],
                    ),
                  ],
                ),
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

  Widget _cardFood({
    required String urlImage,
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
            width: 77,
            height: 77,
            child: Image.network(urlImage),
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
        )
      ],
    );
  }

  Widget _infoFood({
    required String url,
    required String title,
    required String subtitle,
    required String value,
  }) {
    return Container(
      height: 190,
      margin: EdgeInsets.only(
        right: 25,
        bottom: 26,
      ),
      child: Stack(
        children: [
          BaseCard(
            width: 220,
            height: 190,
            borderRadius: BorderRadius.circular(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                url,
                height: 190,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BaseCard(
              height: 86,
              width: 220,
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.circular(5),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 9,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          value,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        BaseCard(
                          height: 25,
                          width: 50,
                          borderRadius: BorderRadius.circular(5),
                          backgroundColor: Color(0xFFFF640D),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 9,
                              vertical: 5,
                            ),
                            child: Text(
                              "5 left",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

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
