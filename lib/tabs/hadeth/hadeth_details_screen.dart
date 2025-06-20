import 'package:flutter/material.dart';
import 'package:islami_app1/tabs/hadeth/hadeth.dart';
import 'package:provider/provider.dart';

import '../../app_theme.dart';
import '../seetings/settings_provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = '/hadeth_details';
  List<String> hadeth = [];

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
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
            hadeth.title,
          ),
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
          child: ListView.builder(
            itemBuilder:
                (_, index) => Text(
                  hadeth.content[index],
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
            itemCount: hadeth.content.length,
          ),
        ),
      ),
    );
  }
}
