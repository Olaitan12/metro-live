import 'package:flutter/material.dart';
import 'package:metro_live/screens/themes.dart';
import 'package:metro_live/widgets/menu_%20card.dart';
import 'package:metro_live/models/menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 32,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'METRO LIVE ANIMAL TRANSIT',
                    style: poppinsTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: kBlackColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'We deliver your lifestock in to all location in Nigeria',
                    style: poppinsTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: kGreyColor,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Popular Locations ',
                    style: poppinsTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: kBlackColor,
                    ),
                  ),
                  MenuCard(
                    menu: Menu(
                        id: 1,
                        image: 'assets/cow-sun.png',
                        name: 'LEKKI DELIVERY',
                        price: 12000,
                        pricePromo: 8000,
                        note:
                            'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM setiap pembelian mendapat 1 kupon burger 10 kupon burger bisa ditukar dengan 1 burger',
                        isPromo: false),
                  ),
                  MenuCard(
                    menu: Menu(
                        id: 1,
                        image: 'assets/cow-sun.png',
                        name: 'KETU DELIVERY',
                        price: 20000,
                        pricePromo: 22000,
                        note:
                            'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM setiap pembelian mendapat 1 kupon burger 10 kupon burger bisa ditukar dengan 1 burger',
                        isPromo: false),
                  ),
                  MenuCard(
                    menu: Menu(
                        id: 1,
                        image: 'assets/cow-sun.png',
                        name: 'Ikorodu Delivery',
                        price: 10000,
                        pricePromo: 9000,
                        note:
                            'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM setiap pembelian mendapat 1 kupon burger 10 kupon burger bisa ditukar dengan 1 burger',
                        isPromo: false),
                  ),
                  MenuCard(
                    menu: Menu(
                        id: 1,
                        image: 'assets/cow-sun.png',
                        name: 'LIVESTOCK',
                        price: 22000,
                        pricePromo: 00,
                        note:
                            'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM setiap pembelian mendapat 1 kupon burger 10 kupon burger bisa ditukar dengan 1 burger',
                        isPromo: false),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
