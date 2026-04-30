 import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seamless/route/router.dart';
import 'package:seamless/shared/theme.dart'; 
import 'package:seamless/ui/widgets/home_widget/homeserviceitem.dart';
import 'package:seamless/ui/widgets/home_widget/more_dialog.dart';
 
 Widget buildServices(BuildContext context) {
     return Container(
       margin: const EdgeInsets.only(top: 30, bottom: 30 ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text(
             'Do something',
             style: blackTextStyle.copyWith(
               fontSize: 16,
               fontWeight: semiBold,
             ),
           ),
           const SizedBox(height: 12), 
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween, 
             children: [
               Homeserviceitem(
                 iconUrl: 'assets/ic_topup.png',
                 title: 'Top Up',
                 onTap: () {
                   context.pushNamed(RoutesName.topup);  
                 },
               ),
              //  const SizedBox(width: 20), 
               Homeserviceitem(
                 iconUrl: 'assets/ic_send.png',
                 title: 'Send',
                 onTap: () {
                   context.pushNamed(RoutesName.transfer);
                 },
               ),
              //  const SizedBox(width: 20),
               Homeserviceitem(
                 iconUrl: 'assets/ic_withdraw.png',
                 title: 'Withdraw',
                 onTap: () { 
                   // TODO: Implement Withdraw
                 },
               ),
              //  const SizedBox(width: 20),
               Homeserviceitem(
                 iconUrl: 'assets/ic_more.png',
                 title: 'More',
                 onTap: () {
                   showDialog(
                     context: context,
                     builder: (context) => const MoreDialog(),
                   );
                 },
               ),
             ],
           ),
         ],
       ),
     );
   }
