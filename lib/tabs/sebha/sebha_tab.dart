import 'package:flutter/material.dart';
import 'package:islami_app1/app_theme.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int num = 1;
  String text = 'سبحان الله';
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Stack with no extra padding between images
          Expanded(
            flex: 3,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset('assets/images/head of seb7a.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child:
                  Transform.rotate(
                    angle: angle,
                    child: GestureDetector(
                      onTap: _onTasbeehPressed,
                      child: Image.asset('assets/images/body of seb7a.png'),
                    ),
                  ),),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            'عدد التسبيحات',
            textAlign: TextAlign.center,
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(
                  fontWeight: FontWeight.w600
              )
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 100),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                backgroundColor: AppTheme.lightPrimary,
              ),
              onPressed: _onTasbeehPressed,
              child: Text(
                '$num',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(
                      fontWeight: FontWeight.w600
                  )
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.all(40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                backgroundColor: AppTheme.lightPrimary,
              ),
              onPressed: _onTasbeehPressed,
              child: Text(
                '$text',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(
                      fontWeight: FontWeight.normal, color: AppTheme.white
                  )
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  void _onTasbeehPressed() {
    setState(() {
      num++;
      if (num > 132) {
        num = 1;
      }
      _updateText();
      angle += (3.14159265359 / 2);
    });
  }

  void _updateText() {
    if (num <= 33) {
      text = 'سبحان الله';
    } else if (num <= 66) {
      text = 'الحمد لله';
    } else if (num <= 99) {
      text = 'لا اله الا الله';
    } else if (num <= 132) {
      text = 'الله اكبر';
    }
  }
}