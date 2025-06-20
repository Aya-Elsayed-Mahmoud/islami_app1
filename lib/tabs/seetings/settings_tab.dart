import 'package:flutter/material.dart';
import 'package:islami_app1/app_theme.dart';
import 'package:islami_app1/tabs/seetings/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.darkMode,
                style: Theme
                    .of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(
                    fontWeight: FontWeight.w500

                ),),
              Switch(
                value: settingsProvider.themeMode == ThemeMode.dark,
                onChanged: (isDark) {
                  settingsProvider.changeTheme(
                      isDark ? ThemeMode.dark : ThemeMode.light);
                },
                activeTrackColor: AppTheme.gold,
                inactiveTrackColor: Colors.grey,

              )

            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.language, style: Theme
                  .of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(
                fontWeight: FontWeight.w500,))
              ,
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: settingsProvider.language,
                  items: [
                    DropdownMenuItem(
                      value: 'en'
                      , child: Text('English', style: Theme
                        .of(context)
                        .textTheme
                        .titleLarge,),),
                    DropdownMenuItem(
                        value: 'ar',
                        child: Text('العربيه', style: Theme
                            .of(context)
                            .textTheme
                            .titleLarge,)),

                  ],
                  onChanged: (selectedLanguage) {
                    if (selectedLanguage == null) return;
                    settingsProvider.changeLanguage(selectedLanguage);
                  },
                  dropdownColor: AppTheme.white,
                  borderRadius: BorderRadius.circular(16),
                ),
              )
            ],)
        ],
      ),
    );
  }
}
