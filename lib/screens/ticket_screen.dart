import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:booktickets/utils/app_styles.dart';
import'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';
import '../utils/layout_builder_widget.dart';


class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
        ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
         Text("Tickets",style: Styles.headLineStyle1),
          const Gap(20),
          const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
          const Gap(25),
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: TicketView(tickets: ticketList[0], isColor: true,),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            color: Colors.white,
            margin: const EdgeInsets.only(right: 16,left: 16) ,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                   AppColumnLayout(
                     firstText: 'Flutter DB',
                     secondText: 'Passenger',
                     alignment: CrossAxisAlignment.start,),
                    AppColumnLayout(
                      firstText: '5221 364869',
                      secondText: 'passport',
                      alignment: CrossAxisAlignment.end,),

                  ],
                ),
                const Gap(20),
                const  AppLayoutBuilderWidget(sections:15,isColor: false,width: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: '005234 6753920',
                      secondText: 'Number of E-ticket',
                      alignment: CrossAxisAlignment.start,),
                    AppColumnLayout(
                      firstText: 'B2SG28',
                      secondText: 'Booking code',
                      alignment: CrossAxisAlignment.end,),

                  ],
                ),
                const Gap(20),
                const  AppLayoutBuilderWidget(sections:15,isColor: false,width: 5,),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/visa.png",scale: 11,),
                            Text("*** 2462",style: Styles.headLineStyle3,)
                          ],
                        ),
                        Gap(5),
                        Text("Payment method",style: Styles.headLineStyle4,),

                      ],
                    ),
                    const AppColumnLayout(
                      firstText: '\$249,99',
                      secondText: 'Price',
                      alignment: CrossAxisAlignment.end,),
                      // isColor:false,
                  ],
                ),
                // const SizedBox(height: 1,),
                // Gap(20),
              ],
            ),
          ),
          /* bar code  */
       Container(

         decoration: const BoxDecoration(
             color: Colors.white,
           borderRadius: BorderRadius.only(
             bottomRight: Radius.circular(21),
             bottomLeft: Radius.circular(21)

           )
         ),
         margin:EdgeInsets.only(left: 15,right: 15),
         padding: const EdgeInsets.only(top: 20,bottom: 20),
         child: Container(
    padding: EdgeInsets.symmetric(horizontal: 15),
           child: ClipRRect (
             borderRadius: BorderRadius.circular(16),
             child: BarcodeWidget(
                barcode: Barcode.code128(),
                 data: 'https://github.com/martinovovo',
                 drawText: false,
                color: Styles.textColor,
                width: double.infinity,
                height: 70,
                 ),
            ),
         ),

       ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: TicketView(tickets: ticketList[0], isColor: null,),
          ),
        ],
        ),
        Positioned(
          left: 19,
          top: 295,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration:BoxDecoration(
              shape:  BoxShape.circle,
              border: Border.all(color: Styles.textColor,width: 2),
            ) ,
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
          Positioned(
            right: 19,
            top: 295,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration:BoxDecoration(
                shape:  BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2),
              ) ,
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          )
        ],
        ),
      );
  }
}
