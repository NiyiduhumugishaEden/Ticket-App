import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/layout_builder_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final   Map<String , dynamic> tickets;
  final bool? isColor;
  const TicketView({Key? key, required this.tickets, required this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height:169,
      child: Container(
        margin: const EdgeInsets.only(right: 16) ,
        child: Column(
          mainAxisSize: MainAxisSize.max,
         children: [
           /*
           showing the blue part of the card /ticket
           */
            Container(
              decoration:  BoxDecoration(
                color: isColor==null ? const Color(0xFF526799) : Colors.white,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21),topRight:Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(tickets['from']['code'],style:isColor == null ? Styles.headLineStyle3.copyWith(color:Colors.white):Styles.headLineStyle3),

                      Expanded(child: Container()),
                  const ThickContainer(isColor:true) ,// it distribute space between  it can also be used as
                      Expanded(child: Stack(
                        children:[
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(sections:6,isColor: false,width: 12,)
                          ),
                          Center(child: Transform.rotate(angle: 1.5, child:   Icon(Icons.local_airport_rounded, color: isColor == null ?  Colors.white : Color(0xFF8ACCF7),),)),
                        ]

                      )),

                      const ThickContainer(isColor:true),
                      Expanded(child: Container()),

                      Text(tickets['to']['code'],style: isColor == null ?  Styles.headLineStyle3.copyWith(color:Colors.white):Styles.headLineStyle3,),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100, child: Text(tickets['from']['name'],style:isColor == null?  Styles.headLineStyle4.copyWith(color:Colors.white):Styles.headLineStyle4,),),
                      Text(tickets['flying_time'], style:isColor ==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),

                      SizedBox(
                        width: 100, child: Text(tickets['to']['name'],textAlign: TextAlign.end, style:isColor ==null? Styles.headLineStyle4.copyWith(color: Colors.white ):Styles.headLineStyle4,),),
                    ],
                  )
                ],
              ),
            ),
           /*
           showing the orange part of the card /ticket
           */
           Container(
             color:isColor == null? Styles.orangeColor :Colors.white,
             child: Row(
               children: [
             SizedBox(
                   height: 20,
                   width: 10,
                   child: DecoratedBox(decoration: BoxDecoration(
                     color:isColor == null? Colors.grey.shade200 : Colors.white,
                     borderRadius: const BorderRadius.only(
                     topRight:Radius.circular(10),
                       bottomRight: Radius.circular(10),
                     )
                   )),
                 ),
                 Expanded(child: Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: LayoutBuilder(

                     builder: (BuildContext context, BoxConstraints constraints) {
                       return   Flex(
                           direction: Axis.horizontal,
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           mainAxisSize: MainAxisSize.max,
                           children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                             width: 5, height: 1,
                             child: DecoratedBox(decoration: BoxDecoration(
                                 color: isColor == null? Colors.white : Colors.grey.shade300,
                             ),),
                           ))
                       );
                     },
                   ),
                 )),
                  SizedBox(
                   height: 20,
                   width: 10,
                   child: DecoratedBox(decoration: BoxDecoration(
                       color:isColor ==null?Colors.grey.shade300: Colors.white,
                       borderRadius: const BorderRadius.only(
                         topLeft:Radius.circular(10),
                         bottomLeft: Radius.circular(10),
                       )
                   )),
                 )
               ],
             ),
           ),
           Container(
             decoration: BoxDecoration(
               color:isColor == null? Styles.orangeColor : Colors.white,
               borderRadius: BorderRadius.only(bottomRight: Radius.circular(isColor == null?21:0),bottomLeft:Radius.circular(isColor == null?21 :0)),
             ),
             padding: const EdgeInsets.only(left:16 , right:16 , top: 10, bottom: 16),
             child: Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(tickets['date'],
                         style:isColor == null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3),
                         const Gap(5),
                         Text("Date",
                             style:isColor == null?  Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4),
                       ]
                     ),
                     Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Text(tickets['departure_time'],
                               style:isColor == null?  Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3),
                           const Gap(5),
                           Text("Departure time",
                               style:isColor == null?  Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4),
                         ]
                     ),
                     Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(tickets['number'].toString(),
                               style:isColor == null?  Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3),
                           const Gap(5),
                           Text("Number",
                               style:isColor == null?  Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4),
                         ]
                     ),
                   ],
                 )
               ],
             ),
           )

          ],
        ),
      ),
    );
  }
}
