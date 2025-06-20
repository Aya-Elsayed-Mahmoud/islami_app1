import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/radio.png'),

            SizedBox(height: 30),
            Text(AppLocalizations.of(context)!.quranRadio,
                textAlign: TextAlign.center,
                style: Theme
                    .of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(
                    fontWeight: FontWeight.w600
                )
            ),
            SizedBox(height: 50),
            Image.asset('assets/images/icon_radio.png'),

          ],
        ),
      );
  }
}