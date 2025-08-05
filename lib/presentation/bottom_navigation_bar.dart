import 'dart:async';
import 'package:flutter/material.dart';
import '../size_config.dart';

class DoctorBanner extends StatefulWidget {
  const DoctorBanner({super.key});

  @override
  State<DoctorBanner> createState() => _DoctorBannerState();
}

class _DoctorBannerState extends State<DoctorBanner> {
  final List<String> _images = [
    'assets/images/splash_1.png',
    'assets/images/splash_2.png',
    'assets/images/splash_3.png',
  ];

  int _currentImageIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    // Change image every 2 seconds
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      setState(() {
        _currentImageIndex = (_currentImageIndex + 1) % _images.length;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel timer to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getRelativeWidth(0.94),
      height: SizeConfig.getRelativeHeight(0.22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xffFBA473), Color(0xffFA7A30)],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.getRelativeWidth(0.03),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Looking for\nSpecialist Doctors?",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.getRelativeWidth(0.055),
                    ),
                  ),
                  SizedBox(height: SizeConfig.getRelativeHeight(0.02)),
                  Text(
                    "Schedule an appointment with\nour top doctors.",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: SizeConfig.getRelativeWidth(0.033),
                    ),
                  ),
                  SizedBox(width: SizeConfig.getRelativeWidth(0.03)),
                  Container(
                    padding: EdgeInsets.all(SizeConfig.getRelativeWidth(0.012)),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: SizeConfig.getRelativeWidth(0.038),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: SizeConfig.getRelativeWidth(0.12),
                width: SizeConfig.getRelativeWidth(0.12),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(_images[_currentImageIndex]),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
