import 'package:flutter/material.dart';
import 'package:islami_app1/tabs/hadeth/hadeth_tab.dart';
import 'package:islami_app1/tabs/quran/quran_tab.dart';
import 'package:islami_app1/tabs/radio/radio_tab.dart';
import 'package:islami_app1/tabs/sebha/sebha_tab.dart';
import 'package:islami_app1/tabs/seetings/settings_provider.dart';
import 'package:islami_app1/tabs/seetings/settings_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            Provider.of<SettingsProvider>(context).backgroundImagePath,
          ),
        )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'إسلامي',
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/quran_icn.png')),
              label: 'Quran',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/hadeth_icon.png')),
              label: 'Hadeth',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/sebha_icon.png')),
              label: 'sebha',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/radio_icon.png')),
              label: 'radio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'settings',
            ),
          ],
        ),
      ),
    );
  }
}
