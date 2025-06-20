import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app1/tabs/hadeth/hadeth.dart';
import 'package:islami_app1/tabs/hadeth/hadeth_details_screen.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth>ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) {
      loadHadethFile();
    }
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
                          arguments: ahadeth[index]
                      ),
                  child: Text(ahadeth[index].title,
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineSmall,
                    textAlign: TextAlign.center,),
                ),
            itemCount: ahadeth.length,
            separatorBuilder: (_, __) => SizedBox(height: 12,),
          ),
        )

      ],
    );
  }

  Future<void> loadHadethFile() async {
    String ahadethFileContent = await rootBundle.loadString(
        'assets/text/ahadeth.txt');
    List<String> ahadethText = ahadethFileContent.split('#');
    ahadeth = ahadethText.map((hadethText) {
      List<String> hadethLines = hadethText.trim().split('\n');
      String title = hadethLines.removeAt(0);
      return Hadeth(title: title, content: hadethLines);
    }).where((hadeth) => hadeth.title.isNotEmpty).toList();
    setState(() {});
  }
}


