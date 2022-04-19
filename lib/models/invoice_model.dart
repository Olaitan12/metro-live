import 'package:metro_live/models/business_model.dart';
import 'package:metro_live/models/customer_model.dart';
import 'package:metro_live/models/item_model.dart';
import 'package:flutter/services.dart';

class Invoice {
  String id;
  String date;
  Business from;
  Customer to;
  List<Item> items;
  String paymentInstructions;
  double total;
  ByteData signature;
  Invoice(
      {required this.id,
      required this.date,
      required this.from,
      required this.to,
      required this.items,
      required this.paymentInstructions,
      required this.total,
      required this.signature});
}
