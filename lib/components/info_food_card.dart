import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:miu_lanches/components/base_card.dart';

class InfoFoodCard extends StatelessWidget {
  const InfoFoodCard({
    super.key,
    this.url = "",
    this.title = "",
    this.subtitle = "",
    this.value = "",
    /// Default is false
    this.selectedHeart = false,
  });

  final String url;
  final String title;
  final String subtitle;
  final String value;
    /// Default is false
  final bool selectedHeart;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: BaseCard(
        width: 320,
        height: 100,
        borderRadius: BorderRadius.circular(5),
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 5,
            right: 5,
          ),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      url,
                      width: 78,
                      height: 78,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 6,
                    right: 6,
                    child: BaseCard(
                      width: 20,
                      height: 20,
                      backgroundColor: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                      child: Icon(
                        selectedHeart
                            ? FontAwesomeIcons.heartCircleCheck
                            : FontAwesomeIcons.heart,
                        size: 11,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 13,
                    top: 11,
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
                            width: 60,
                            height: 25,
                            backgroundColor: Color(0xFFFF640D),
                            borderRadius: BorderRadius.circular(5),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 6,
                              ),
                              child: Text(
                                "Buy now",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
