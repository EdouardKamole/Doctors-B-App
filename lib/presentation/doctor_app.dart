import 'package:flutter/material.dart';
import 'package:doctor_app/constants.dart';
import 'package:doctor_app/presentation/appbar.dart';
import 'package:doctor_app/presentation/banner.dart';
import 'package:doctor_app/presentation/bottom_navigation_bar.dart';
import 'package:doctor_app/presentation/categories_list.dart';
import 'package:doctor_app/presentation/doctors_list.dart';
import 'package:doctor_app/presentation/search_field.dart';
import 'package:doctor_app/size_config.dart';
import 'package:doctor_app/size_mixin.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({super.key});

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> with SizeMixin {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getRelativeHeight(0.025)),
              const DoctorBanner(), // Added const
              SizedBox(height: getRelativeHeight(0.015)),
              const DoctorAppBar(), // Added const - this was the main issue
              SizedBox(height: getRelativeHeight(0.005)),
              const SearchField(),
              SizedBox(height: getRelativeHeight(0.025)),
              const CategoriesList(),
              SizedBox(height: getRelativeHeight(0.01)),
              const DoctorsList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: _selectedIndex,
        onItemPressed: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        centerIcon: Icons.place,
        itemIcons: const [
          Icons.home,
          Icons.notifications,
          Icons.message,
          Icons.account_box,
        ],
      ),
    );
  }
}
