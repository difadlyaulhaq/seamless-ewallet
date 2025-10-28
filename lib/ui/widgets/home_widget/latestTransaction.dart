import 'package:flutter/material.dart';
import 'package:seamless/ui/widgets/home_widget/latestTransactionItem.dart' show LatesttransactionItem;

import '../../../shared/theme.dart';

Widget latestTransaction() {
     return Container(
       child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 14),
           Text(
             'latest Transaction',
             style: blackTextStyle.copyWith(
               fontSize: 20,
               fontWeight: semiBold
             ),
           ),
           const SizedBox(height: 14),
           Container(
            padding: const EdgeInsets.all(22),
            margin:   const EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                LatesttransactionItem(
                  iconUrl: 'assets/ic_transaction_cat1.png',
                  title: 'Top up',
                  date: '12 Jan 2023',
                  amount: 'Rp.100.000',
                ),
                LatesttransactionItem(
                  iconUrl: 'assets/ic_transaction_cat2.png',
                  title: 'Send',
                  date: '12 Jan 2023',
                  amount: 'Rp.100.000',
                ),
                LatesttransactionItem(
                  iconUrl: 'assets/ic_transaction_cat3.png',
                  title: 'Withdraw',
                  date: '12 Jan 2023',
                  amount: 'Rp.100.000',
                ),
                LatesttransactionItem(
                  iconUrl: 'assets/ic_transaction_cat4.png',
                  title: 'Transfer',
                  date: '12 Jan 2023',
                  amount: 'Rp.100.000',
                ),
                LatesttransactionItem(
                  iconUrl: 'assets/ic_transaction_cat5.png',
                  title: 'Electricity',
                  date: '12 Jan 2023',
                  amount: 'Rp.100.000',
                ),
              ],
            ),
           )
         ],
       ),
     );
   }