import 'package:flutter/material.dart';
import 'package:doctor_app/data/data.dart';
import 'package:doctor_app/constants.dart';
import '../size_config.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.getProportionateScreenHeight(120),
      child: ListView.builder(
        itemCount: Data.categoriesList.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.getProportionateScreenWidth(20),
        ),
        itemBuilder: (context, index) {
          final category = Data.categoriesList[index];
          return Container(
            width: SizeConfig.getProportionateScreenWidth(160),
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
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.getProportionateScreenWidth(12)),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(SizeConfig.getProportionateScreenWidth(12)),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          kCategoriesPrimaryColor[index],
                          kCategoriesSecondryColor[index],
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      category.icon,
                      color: Colors.white,
                      size: SizeConfig.getProportionateScreenWidth(20),
                    ),
                  ),
                  SizedBox(width: SizeConfig.getProportionateScreenWidth(10)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category.title,
                        style: TextStyle(
                          fontSize: SizeConfig.getProportionateScreenWidth(14),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: SizeConfig.getProportionateScreenHeight(5)),
                      Text(
                        "${category.doctorsNumber} doctors",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: SizeConfig.getProportionateScreenWidth(12),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}