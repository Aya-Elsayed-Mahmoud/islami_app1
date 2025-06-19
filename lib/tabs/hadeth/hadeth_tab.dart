import 'package:flutter/material.dart';
import 'package:islami_app1/tabs/hadeth/hadeth_details_screen.dart';

class HadethTab extends StatelessWidget {
  List<String>hadethNames = [
    "الحديث 1",
    "الحديث 2",
    "الحديث 3",
    "الحديث 4",
    "الحديث 5",
    "الحديث 6",
    "الحديث 7",
    "الحديث 8",
    "الحديث 9",
    "الحديث 10",
    "الحديث 11"
    ,
    "الحديث 12",
    "الحديث13 ",
    "الحديث 14",
    "الحديث 15",
    "الحديث 16",
    "الحديث 17",
    "الحديث 1",
    "الحديث 1",
    "الحديث 1",
    "الحديث 1",
    "الحديث 1",
    "الحديث 1"
    ,
    "الحديث 1",
    "الحديث 1",
    "الحديث 1",
    "الحديث 1",
    "الحديث 1",
    "الحديث 1",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ"
    ,
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف"
    ,
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة"
    ,
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج"
    ,
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار"
    ,
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",

  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/hadeth_image.png',
          height: MediaQuery
              .of(context)
              .size
              .height * 0.25,),
        SizedBox(height: 12,),
        Expanded(
          child: ListView.separated(
            itemBuilder: (_, index) =>
                InkWell(
                  onTap: () =>
                      Navigator.of(context).pushNamed(
                          HadethDetailsScreen.routeName,
                          arguments: HadethDetailsArgs(
                              hadethName: hadethNames[index],
                              index: index)),
                  child: Text(hadethNames[index],
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineSmall,
                    textAlign: TextAlign.center,),
                ),
            itemCount: hadethNames.length,
            separatorBuilder: (_, __) => SizedBox(height: 12,),
          ),
        )

      ],
    );
  }
}

class HadethDetailsArgs {
  String hadethName;
  int index;

  HadethDetailsArgs({required this.hadethName, required this.index});
}