import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/utils/layout_builder_widget.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height:86 ,
                width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(
                        "assets/images/img_1.png"
                    )
                  )
                ),
              ),
              const Gap(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets" , style: Styles.headLineStyle1,),
                  const Gap(2),
                  Text("New-York" , style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500,color: Colors.grey.shade500
                  )),
                  const Gap(8),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color:const Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: Row(
                      children: [
                        Container(
                          padding:EdgeInsets.all(3) ,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color:Color(0xFF526799),
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,color: Colors.white, size: 15,),

                        ),
                        Gap(5),
                        const Text("Premium status", style: TextStyle(
                          color: Color(0xFF526799),fontWeight: FontWeight.w600
                        ),),
                        Gap(5),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      print("you are clicked");
                    },
                    child: Text("Edit",
                    style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w200),),
                  )
                ],)
            ],
          ),
          Gap(8),
          Divider(color: Colors.grey.shade300,),
          Gap(8),
          Stack(
            children: [
              Container(
                height:  90,
                width:double.infinity ,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Positioned(
                top: -40,
                right: -45,
                child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18,color: Color(0xFF264CD2))
                ),
              ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled ,
                      color: Styles.primaryColor,size: 27,
                      ),
                    ),
                    const Gap(12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You\' v got a new award",
                        style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                        Text("You have 95 flights in a year",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500 , fontSize: 16,color: Colors.white.withOpacity(0.9)),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const Gap(20),
          Text("Accumulated miles", style: Styles.headLineStyle2,),
          const Gap(20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 10,
                  spreadRadius: 1
                )
              ]
            ),
            child: Column(
              children: [
                const Gap(15),
                Text("192802", style: TextStyle(
                  fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600
                ),),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued", style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                    Text("11 June 2022", style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                  ],
                ),
                Divider(color: Colors.grey.shade300,),
                const Gap(4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(firstText: "23 042", secondText: "Miles", alignment: CrossAxisAlignment.start, ),
                    AppColumnLayout(firstText: "Airline CO", secondText: "Received from", alignment: CrossAxisAlignment.end, )
                  ],
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(firstText: "24", secondText: "Miles", alignment: CrossAxisAlignment.start, ),
                    AppColumnLayout(firstText: "MCDoanal\'s", secondText: "Received from", alignment: CrossAxisAlignment.end, )
                  ],
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(firstText: "52 340", secondText: "Miles", alignment: CrossAxisAlignment.start, ),
                    AppColumnLayout(firstText: "Extusm", secondText: "Received from", alignment: CrossAxisAlignment.end, )
                  ],
                )
                // AppLayoutBuilderWidget(sections: 12, width: 45,) dotted line drawn
              ],
            ),
          ),
          const Gap(25),
          InkWell(
            onTap: (){
              print("You are tapped");
            },
              child: Center(child: Text("How to get more miles", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500),)))

        ],
      ),
    );
  }
}
