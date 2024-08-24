import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/main_screen.dart';
import 'components/heighlights.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/experiences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const MainScreen(children: [
      HomeBanner(),
      HighLightsInfo(),
      MyProjectList(),
      Experiences(),
      Certifications()
    ]);
  }
}
