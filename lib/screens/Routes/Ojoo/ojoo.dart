import 'package:flutter/material.dart';

import '../../payment_option.dart';
import '../../themes.dart';

class Ojoo extends StatefulWidget {
  const Ojoo({Key? key}) : super(key: key);

  @override
  State<Ojoo> createState() => _OjooState();
}

class _OjooState extends State<Ojoo> {
  int i = 1;

  int dataPrice = 3300;
  int dataPricePromo = 1650;

  int price = 3300;
  int pricePromo = 1650;

  bool isMini = true;
  bool isSedang = false;
  bool isBesar = false;
  bool isSuperBesar = false;

  void _minus() {
    setState(() {
      if (i > 1) {
        i--;
        if (isMini == true) {
          price = dataPrice * i;
          pricePromo = dataPricePromo * i;
        } else if (isSedang == true) {
          price = (dataPrice + 750) * i;
          pricePromo = (dataPricePromo + 750) * i;
        } else if (isBesar == true) {
          price = (dataPrice + 1500) * i;
          pricePromo = (dataPricePromo + 1500) * i;
        } else if (isSuperBesar == true) {
          price = (dataPrice + 3000) * i;
          pricePromo = (dataPricePromo + 3000) * i;
        }
      }
    });
  }

  void _plus() {
    setState(() {
      i++;

      if (isMini == true) {
        price = dataPrice * i;
        pricePromo = dataPricePromo * i;
      } else if (isSedang == true) {
        price = (dataPrice + 750) * i;
        pricePromo = (dataPricePromo + 750) * i;
      } else if (isBesar == true) {
        price = (dataPrice + 1500) * i;
        pricePromo = (dataPricePromo + 1500) * i;
      } else if (isSuperBesar == true) {
        price = (dataPrice + 3000) * i;
        pricePromo = (dataPricePromo + 3000) * i;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/cow-sun.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Image.asset('assets/btn_back.png', width: 40),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset('assets/btn_share.png', width: 40),
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                const SizedBox(height: 264),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/Promo.png',
                              width: 60,
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  'OJOO ROUTE',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: kBlackColor,
                                  ),
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: _minus,
                                  child: Image.asset(
                                    'assets/Minus.png',
                                    width: 34,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Text(
                                  '$i',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: kBlackColor,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                InkWell(
                                  onTap: _plus,
                                  child: Image.asset(
                                    'assets/Plus.png',
                                    width: 34,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                Text(
                                  '₦5500',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 14,
                                    color: kGreyColor,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '$price',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 14,
                                    color: kYellowColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 18),
                            Text(
                              'Metro Transit',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: kBlackColor,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const SizedBox(height: 18),
                            Text(
                              'Description',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: kBlackColor,
                              ),
                            ),
                            const SizedBox(height: 12),
                            // ignore: sized_box_for_whitespace
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'lorem-ipsum',
                                style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: kGreyColor,
                                ),
                              ),
                            ),
                            const SizedBox(height: 18),
                            Text(
                              'Location',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: kBlackColor,
                              ),
                            ),
                            const SizedBox(height: 12),
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/Img_store.png',
                                    width: 50,
                                  ),
                                  const SizedBox(width: 18),
                                  Text(
                                    'Metro Live Animal Transit Nigeria\nLimited, Oko-Oba Road, Agege',
                                    style: poppinsTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: kGreyColor,
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.chevron_right,
                                      color: kGreyColor,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 40),
                            // ignore: sized_box_for_whitespace
                            Container(
                              width: MediaQuery.of(context).size.width,
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                padding: const EdgeInsets.only(
                                  top: 12,
                                  bottom: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                elevation: 0,
                                focusElevation: 0,
                                hoverElevation: 0,
                                disabledElevation: 0,
                                highlightElevation: 0,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Payment()),
                                  );
                                },
                                color: kYellowColor,
                                child: Text(
                                  'Continue to Payment',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: kWhiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildPopupDialog(BuildContext context) {
  return AlertDialog(
    title: const Text('PAYMENT OPTION'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Text("Cash"),
        Text("Transfer"),
      ],
    ),
    actions: <Widget>[
      Row(
        children: [
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            textColor: Theme.of(context).primaryColor,
            child: const Text('Close'),
          ),
        ],
      ),
    ],
  );
}
