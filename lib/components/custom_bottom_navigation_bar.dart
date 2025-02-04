import 'package:flutter/material.dart';
import 'package:miu_lanches/components/base_card.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.colorContainer,
    required this.icon,
    required this.colorIcon,
    required this.sizeIcon,
  });

  final Color colorContainer;
  final IconData icon;
  final Color colorIcon;
  final double sizeIcon;

  @override
  Widget build(BuildContext context) {
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
