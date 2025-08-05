import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doctor_app/data/data.dart';
import 'package:doctor_app/constants.dart';
import '../size_config.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.getProportionateScreenHeight(250),
      child: ListView.builder(
        itemCount: Data.doctorsList.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.getProportionateScreenWidth(20),
        ),
        itemBuilder: (context, index) {
          final doctor = Data.doctorsList[index];
          final color = kCategoriesSecondryColor[
              (kCategoriesSecondryColor.length - index - 1)];
          final circleColor = kCategoriesPrimaryColor[
              (kCategoriesPrimaryColor.length - index - 1)];

          return Container(
            width: SizeConfig.getProportionateScreenWidth(180),
            margin: EdgeInsets.only(
                right: SizeConfig.getProportionateScreenWidth(15)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                )
              ],
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: SizeConfig.getProportionateScreenHeight(120),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: color,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: SizeConfig.getProportionateScreenHeight(10),
                            left: SizeConfig.getProportionateScreenWidth(10),
                            child: Container(
                              width:
                                  SizeConfig.getProportionateScreenWidth(100),
                              height:
                                  SizeConfig.getProportionateScreenHeight(100),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 15,
                                  color: circleColor.withOpacity(0.6),
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Center(
                            child: SizedBox(
                              width:
                                  SizeConfig.getProportionateScreenWidth(100),
                              height:
                                  SizeConfig.getProportionateScreenHeight(120),
                              child: Image.asset(
                                doctor.image,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: SizeConfig.getProportionateScreenWidth(10),
                      top: SizeConfig.getProportionateScreenHeight(10),
                      child: Container(
                        padding: EdgeInsets.all(
                            SizeConfig.getProportionateScreenWidth(8)),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              offset: Offset(0, 3),
                              color: Colors.black12,
                            )
                          ],
                        ),
                        child: Icon(
                          FontAwesomeIcons.facebookMessenger,
                          color: color,
                          size: SizeConfig.getProportionateScreenWidth(16),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(
                      SizeConfig.getProportionateScreenWidth(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctor.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: SizeConfig.getProportionateScreenWidth(14),
                        ),
                      ),
                      SizedBox(
                          height: SizeConfig.getProportionateScreenHeight(5)),
                      Text(
                        doctor.speciality,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: SizeConfig.getProportionateScreenWidth(12),
                        ),
                      ),
                      SizedBox(
                          height: SizeConfig.getProportionateScreenHeight(5)),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: doctor.reviewScore.toDouble(),
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize:
                                SizeConfig.getProportionateScreenWidth(12),
                            itemPadding: EdgeInsets.zero,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                            ignoreGestures: true,
                          ),
                          SizedBox(
                              width: SizeConfig.getProportionateScreenWidth(5)),
                          Text(
                            "(${doctor.reviews} Reviews)",
                            style: TextStyle(
                              fontSize:
                                  SizeConfig.getProportionateScreenWidth(10),
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
