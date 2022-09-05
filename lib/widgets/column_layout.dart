import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final  String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  const AppColumnLayout({Key? key, required this.firstText, required this.secondText, required this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,style: Styles.headLineStyle3,),
        const Gap(5),
        Text(secondText,style: Styles.headLineStyle4,),
      ],
    );
  }
}
