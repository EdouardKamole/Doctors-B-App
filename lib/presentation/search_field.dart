import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.getProportionateScreenWidth(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: SizeConfig.getProportionateScreenHeight(15),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: "Search Doctor",
          hintStyle: TextStyle(
            fontSize: SizeConfig.getProportionateScreenWidth(14),
            color: Colors.blueGrey.withOpacity(0.9),
          ),
          prefixIcon: Icon(
            LineIcons.search,
            color: Colors.blueGrey.withOpacity(0.9),
            size: SizeConfig.getProportionateScreenWidth(20),
          ),
          suffixIcon: Container(
            margin: EdgeInsets.only(
                right: SizeConfig.getProportionateScreenWidth(10)),
            width: SizeConfig.getProportionateScreenWidth(80),
            height: SizeConfig.getProportionateScreenHeight(40),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffFBA473), Color(0xffFA7A30)],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Filter",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.getProportionateScreenWidth(12),
                  ),
                ),
                SizedBox(width: SizeConfig.getProportionateScreenWidth(5)),
                Icon(
                  Icons.filter_list,
                  color: Colors.white,
                  size: SizeConfig.getProportionateScreenWidth(16),
                )
              ],
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
