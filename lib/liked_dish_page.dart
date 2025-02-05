import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:miu_lanches/components/base_card.dart';
import 'package:miu_lanches/components/info_food_card.dart';
import 'package:miu_lanches/controllers/liked_dish_controller.dart';
import 'package:miu_lanches/product_detail_page.dart';

class LikedDishPage extends StatelessWidget {
  const LikedDishPage({super.key});

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
                  top: 25,
                  bottom: 25,
                ),
                child: Row(
                  children: [
                    Text(
                      "Liked dish",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 27,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                child: InfoFoodCard(
                  selectedHeart: context.watch<LikedDishController>().selectedHeart,
                  url:
                      "https://veganhuggs.com/wp-content/uploads/2020/03/easy-vegan-chickpea-curry-5.jpg",
                  title: "Vegan Chickpea Curry",
                  subtitle: "Moong dal (split mung beans) are...",
                  value: "R\$ 150",
                ),
                onTap: () {
                context.read<LikedDishController>().selected();
                },
              ),
              InfoFoodCard(
                url:
                    "https://images.squarespace-cdn.com/content/v1/5e625b6ea789c864d51db81e/566dbfbb-0f60-4d08-996e-da98da233a9d/Cauliflower+Pasta.jpg",
                title: "One-Pot Cauliflower",
                subtitle: "Biryani is a rice dish that’s spiced...",
                value: "R\$ 230",
              ),
              InfoFoodCard(
                url:
                    "https://easyfood.ie/wp-content/uploads/2023/01/coconut-butter-chicken_featured-image-770x770.jpg",
                title: "Indian Coconut Butter",
                subtitle: "Biryani is a rice dish that’s spiced...",
                value: "R\$ 850",
              ),
              InfoFoodCard(
                url:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9k3aQ9aF-SoTeZrZOdkv5FL9A_Pfw2ghUJQ&s",
                title: "Murgh Makhani ",
                subtitle: "Murgh Makhani (butter chicken) is......",
                value: "R\$ 850",
              ),
              InfoFoodCard(
                url:
                    "https://skinnyspatula.com/wp-content/uploads/2023/12/Instant_Pot_Butter_Chicken_1.jpg",
                title: "Instant Pot Butter ",
                subtitle: "If you love murgh makhani but....",
                value: "R\$ 850",
              ),
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
              _iconChoice(
                colorContainer: Colors.white,
                colorIcon: Color(0xFF2E3A59),
                icon: Icons.home_outlined,
                sizeIcon: 30,
              ),
              _iconChoice(
                colorContainer: Color(0xFFECECEC),
                colorIcon: Color(0xFFFF640D),
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

  Widget _iconChoice(
      {required Color colorContainer,
      required IconData icon,
      required Color colorIcon,
      required double sizeIcon}) {
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
