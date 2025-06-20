import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app1/tabs/quran/quran_tab.dart';
import 'package:islami_app1/tabs/seetings/settings_provider.dart';
import 'package:provider/provider.dart';

import '../../app_theme.dart';

class SuraDelailsScreen extends StatefulWidget {
  static const String routeName = '/sura_details';

  @override
  State<SuraDelailsScreen> createState() => _SuraDelailsScreenState();
}

class _SuraDelailsScreenState extends State<SuraDelailsScreen> {
  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args =
        ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    if (ayat.isEmpty) {
      loadSuraFile(args.index);
    }

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Provider
              .of<SettingsProvider>(context)
              .backgroundImagePath),
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
            color: Provider
                .of<SettingsProvider>(context)
                .isDark ? AppTheme.darkPrimary : AppTheme.white,
          ),
          child:
              ayat.isEmpty
                  ? Center(
                    child: CircularProgressIndicator(color: AppTheme.gold),
                  )
                  : ListView.builder(
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

  Future<void> loadSuraFile(int index) async {
    String sura = await rootBundle.loadString('assets/text/${index + 1}.txt');
    ayat = sura.split('\r\n');
    setState(() {});
  }
}
