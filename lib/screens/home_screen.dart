import 'package:flutter/material.dart';
import 'package:metro_live/screens/Routes/Abaranje/abaranje.dart';
import 'package:metro_live/screens/Routes/Abati/abati.dart';
import 'package:metro_live/screens/Routes/Agbara/agbara.dart';
import 'package:metro_live/screens/Routes/Agbara_Totowu/agbara_totowu.dart';
import 'package:metro_live/screens/Routes/Ayobo/ayobo.dart';
import 'package:metro_live/screens/Routes/Bariga/bariga.dart';
import 'package:metro_live/screens/Routes/Bolade/bolade.dart';
import 'package:metro_live/screens/Routes/Ejigbo/ejigbo.dart';
import 'package:metro_live/screens/Routes/Festac/festac.dart';
import 'package:metro_live/screens/Routes/Idimu/idimu.dart';
import 'package:metro_live/screens/Routes/Igando/igando.dart';
import 'package:metro_live/screens/Routes/Isheri/isheri.dart';
import 'package:metro_live/screens/Routes/Isolo/isolo.dart';
import 'package:metro_live/screens/Routes/Itire/itire.dart';
import 'package:metro_live/screens/Routes/Ketu/ketu.dart';
import 'package:metro_live/screens/Routes/Matori/matori.dart';
import 'package:metro_live/screens/Routes/Ojoo/ojoo.dart';
import 'package:metro_live/screens/Routes/Shasha/shasha.dart';
import 'package:metro_live/screens/Routes/ashanti/ashanti.dart';
import 'package:metro_live/screens/Routes/ashapo/ashapo.dart';
import 'package:metro_live/screens/themes.dart';
import 'package:metro_live/widgets/menu_%20card.dart';
import 'package:metro_live/models/menu.dart';

import 'detail_screen.dart';

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
                  const SizedBox(
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
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Delivery Locations ',
                    style: poppinsTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: kBlackColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Ashapo(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 1,
                          image: 'assets/cow-sun.png',
                          name: 'ASHAPO ROUTE',
                          price: 5000,
                          pricePromo: 3000,
                          note: '',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Ashanti(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 2,
                          image: 'assets/cow-sun.png',
                          name: 'ASHANTI ROUTE',
                          price: 5000,
                          pricePromo: 3000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Bolade(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 3,
                          image: 'assets/cow-sun.png',
                          name: 'BOLADE ROUTE',
                          price: 5000,
                          pricePromo: 3000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Itire(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 4,
                          image: 'assets/cow-sun.png',
                          name: 'ITIRE ROUTE',
                          price: 5000,
                          pricePromo: 3000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Matori(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 5,
                          image: 'assets/cow-sun.png',
                          name: 'MATORI ROUTE',
                          price: 5000,
                          pricePromo: 3000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Isolo(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 6,
                          image: 'assets/cow-sun.png',
                          name: 'ISOLO ROUTE',
                          price: 5000,
                          pricePromo: 3000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Ejigbo(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 8,
                          image: 'assets/cow-sun.png',
                          name: 'EJIGBO ROUTE',
                          price: 5000,
                          pricePromo: 3000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Idimu(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 8,
                          image: 'assets/cow-sun.png',
                          name: 'IDIMU ROUTE',
                          price: 5000,
                          pricePromo: 3000,
                          note: '',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Shasha(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 9,
                          image: 'assets/cow-sun.png',
                          name: 'SHASHA ROUTE',
                          price: 5000,
                          pricePromo: 3000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Bariga(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 10,
                          image: 'assets/cow-sun.png',
                          name: 'BARIGA ROUTE',
                          price: 5000,
                          pricePromo: 3000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Abaranje(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 11,
                          image: 'assets/cow-sun.png',
                          name: 'ABARANJE ROUTE',
                          price: 5000,
                          pricePromo: 3000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Ayobo(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 12,
                          image: 'assets/cow-sun.png',
                          name: 'AYOBO ROUTE',
                          price: 5000,
                          pricePromo: 3000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Ketu(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 13,
                          image: 'assets/cow-sun.png',
                          name: 'KETU ROUTE',
                          price: 5000,
                          pricePromo: 3000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Isheri(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 14,
                          image: 'assets/cow-sun.png',
                          name: 'ISHERI ROUTE',
                          price: 5000,
                          pricePromo: 3000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Igando(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 15,
                          image: 'assets/cow-sun.png',
                          name: 'IGANDO ROUTE',
                          price: 5000,
                          pricePromo: 3000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Abati(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 16,
                          image: 'assets/cow-sun.png',
                          name: 'ABATI-OJUELEGBA ROUTE',
                          price: 5000,
                          pricePromo: 3000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Ojoo(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 17,
                          image: 'assets/cow-sun.png',
                          name: 'OJOO ROUTE',
                          price: 5500,
                          pricePromo: 3300,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Festac(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 18,
                          image: 'assets/cow-sun.png',
                          name: 'FESTAC ROUTE',
                          price: 8000,
                          pricePromo: 4500,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Agbara(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 19,
                          image: 'assets/cow-sun.png',
                          name: 'AGBARA ROUTE',
                          price: 6000,
                          pricePromo: 3800,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AgbaraTotowu(),
                        ),
                      );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 20,
                          image: 'assets/cow-sun.png',
                          name: 'AGBARA TOTOWU ROUTE',
                          price: 6000,
                          pricePromo: 3800,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const DetailScreen(),
                      //   ),
                      // );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 21,
                          image: 'assets/cow-sun.png',
                          name: 'IJAKO ROUTE',
                          price: 5000,
                          pricePromo: 3000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const DetailScreen(),
                      //   ),
                      // );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 22,
                          image: 'assets/cow-sun.png',
                          name: 'AJILETE ROUTE',
                          price: 8000,
                          pricePromo: 4000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const DetailScreen(),
                      //     ),
                      //   );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 23,
                          image: 'assets/cow-sun.png',
                          name: '0WODE ROUTE',
                          price: 8000,
                          pricePromo: 4000,
                          note: '',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const DetailScreen(),
                      //   ),
                      // );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 24,
                          image: 'assets/cow-sun.png',
                          name: 'OWODE WINNER ROUTE',
                          price: 8000,
                          pricePromo: 4000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const DetailScreen(),
                      //   ),
                      // );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 25,
                          image: 'assets/cow-sun.png',
                          name: 'OWODE ATAN ROUTE',
                          price: 8000,
                          pricePromo: 4000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const DetailScreen(),
                      //   ),
                      // );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 26,
                          image: 'assets/cow-sun.png',
                          name: 'IFO ROUTE',
                          price: 8000,
                          pricePromo: 4000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const DetailScreen(),
                      //   ),
                      // );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 27,
                          image: 'assets/cow-sun.png',
                          name: 'ILO ROUTE',
                          price: 4000,
                          pricePromo: 2500,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const DetailScreen(),
                      //   ),
                      // );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 28,
                          image: 'assets/cow-sun.png',
                          name: 'OSI R/B',
                          price: 4000,
                          pricePromo: 2500,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const DetailScreen(),
                      //   ),
                      // );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 29,
                          image: 'assets/cow-sun.png',
                          name: 'PAKO ROUTE',
                          price: 4000,
                          pricePromo: 2500,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const DetailScreen(),
                      //   ),
                      // );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 30,
                          image: 'assets/cow-sun.png',
                          name: 'POWERLINE ROUTE',
                          price: 8000,
                          pricePromo: 4000,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const DetailScreen(),
                      //   ),
                      // );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 31,
                          image: 'assets/cow-sun.png',
                          name: 'AYOBO AJASA ROUTE',
                          price: 4000,
                          pricePromo: 2500,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const DetailScreen(),
                      //   ),
                      // );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 32,
                          image: 'assets/cow-sun.png',
                          name: 'AYOBO IJIGUN ROUTE',
                          price: 5500,
                          pricePromo: 3500,
                          note: ' ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const DetailScreen(),
                      //   ),
                      // );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 33,
                          image: 'assets/cow-sun.png',
                          name: 'IKORODU ROUTE',
                          price: 0000,
                          pricePromo: 0000,
                          note: 'Price TBD',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const DetailScreen(),
                      //   ),
                      // );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 34,
                          image: 'assets/cow-sun.png',
                          name: 'AJAH / IBEJU ROUTE',
                          price: 000,
                          pricePromo: 00,
                          note: 'Price TBD ',
                          isPromo: false),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const DetailScreen(),
                      //   ),
                      // );
                    },
                    child: MenuCard(
                      menu: Menu(
                          id: 35,
                          image: 'assets/cow-sun.png',
                          name: 'EPE ROUTE',
                          price: 000,
                          pricePromo: 00,
                          note: 'Price TBD',
                          isPromo: false),
                    ),
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
