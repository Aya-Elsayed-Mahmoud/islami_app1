import 'package:flutter/material.dart';
import 'package:islami_app1/tabs/quran/quran_tab.dart';

import '../../app_theme.dart';

class SuraDelailsScreen extends StatelessWidget {
  static const String routeName = '/sura_details';
  List<String> ayat = [
    "بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ",
    "الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِين",
    "الرَّحْمَنِ الرَّحِيم",
  ];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args =
        ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.suraName,
            style: TextStyle(
              color: AppTheme.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          padding: EdgeInsets.all(24),
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height * 0.05,
            vertical: MediaQuery.of(context).size.width * 0.07,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: AppTheme.white,
          ),
          child: ListView.builder(
            itemBuilder:
                (_, index) => Text(
                  ayat[index],
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
            itemCount: ayat.length,
          ),
        ),
      ),
    );
  }
}
