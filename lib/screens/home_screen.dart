import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:  Column(
              children: [
                const  Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                            "Good Morning",style: Styles.headLineStyle3,
                        ),
                          // SizedBox(height: 5,),
                     const  Gap(5),
                          Text(
                            "Book Tickets" ,style:Styles.headLineStyle1,
                        ),
                      ],
                    ),
                   // Image.asset("assets/images/img_1.png")
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/img_1.png"
                          )
                        )
                      ),
                    )
                  ],
                ),
                const Gap(25),  // or SizedBox(height:20,)
               Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.grey.shade100,
                 ),
                 padding: const EdgeInsets.symmetric(horizontal:12 ,vertical: 15,),
                 child: Row(
                   children: [
                     const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xB0AAAAFF)),
                     Text(
                       "Search",
                       style: Styles.headLineStyle4,
                     )
                   ],
                 ),
               ),
             const   Gap(40),
            const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all")
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal ,
            padding: const  EdgeInsets.only(right: 20),

            child: Row(
              children: ticketList.map((singleTicket) => TicketView(tickets: singleTicket, isColor: null)).toList()
            ),
          ),
          const Gap(20 ),
          Container(
            padding:const EdgeInsets.symmetric(horizontal: 20) ,
            child:  const AppDoubleTextWidget(bigText: "Hotels", smallText: "View all"),
          ),
          const Gap(20 ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal ,
            padding: const  EdgeInsets.only(right: 20),
            child: Row(
              children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()

              ,
            ),
          ),


        ],
      ),
    );
  }
}
