import 'package:flutter/material.dart';
import '../size_config.dart';

class DoctorBanner extends StatelessWidget {
  const DoctorBanner({super.key});

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
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/doctor_splash_1.png"),
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
