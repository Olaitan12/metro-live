// // ignore_for_file: deprecated_member_use

// import 'package:flutter/material.dart';
// import 'package:invoiceninja/invoiceninja.dart';
// import 'package:invoiceninja/models/client.dart';
// import 'package:invoiceninja/models/invoice.dart';
// import 'package:invoiceninja/models/product.dart';
// import 'package:url_launcher/url_launcher.dart';

// class Payment extends StatefulWidget {
//   Payment({Key? key}) : super(key: key);

//   @override
//   _PaymentState createState() => _PaymentState();
// }

// class _PaymentState extends State<Payment> with WidgetsBindingObserver {
//   List<Product> _products = [];

//   String _email = '';
//   Product? _product;
//   Invoice? _invoice;

//   @override
//   initState() {
//     super.initState();
//     WidgetsBinding.instance.addObserver(this);

//     InvoiceNinja.configure(
//       'KEY', // Set your company key or use 'KEY' to test
//       url: 'https://dem.invoiceninja.com/', // Set your selfhost app URL
//       debugEnabled: true,
//     );

//     InvoiceNinja.products.load().then((products) {
//       setState(() {
//         _products = products;
//       });
//     });
//   }

//   void _createInvoice() async {
//     if (_product == null) {
//       return;
//     }

//     var client = Client.forContact(email: _email);
//     client = await InvoiceNinja.clients.save(client);

//     var invoice = Invoice.forClient(client, products: [_product!]);
//     invoice = await InvoiceNinja.invoices.save(invoice);

//     setState(() {
//       _invoice = invoice;
//     });
//   }

//   void _viewPdf() {
//     if (_invoice == null) {
//       return;
//     }

//     launch(
//       'https://docs.google.com/gview?embedded=true&url=${_invoice!.pdfUrl}',
//       forceWebView: true,
//     );
//   }

//   void _viewPortal() {
//     if (_invoice == null) {
//       return;
//     }

//     final invitation = _invoice!.invitations.first;
//     launch(invitation.url);
//   }

//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) async {
//     if (_invoice == null || state != AppLifecycleState.resumed) {
//       return;
//     }

//     final invoice = await InvoiceNinja.invoices.findByKey(_invoice!.key);

//     if (invoice.isPaid) {
//       // ...
//     }
//   }

//   @override
//   void dispose() {
//     WidgetsBinding.instance.removeObserver(this);
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Invoice Ninja Example'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Card(
//             child: Padding(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   TextFormField(
//                     decoration: const InputDecoration(
//                       labelText: 'Email',
//                       suffixIcon: Icon(Icons.email),
//                     ),
//                     onChanged: (value) => setState(() => _email = value),
//                     keyboardType: TextInputType.emailAddress,
//                   ),
//                   DropdownButtonFormField<Product>(
//                     decoration: const InputDecoration(
//                       labelText: 'Product',
//                     ),
//                     onChanged: (value) => setState(() => _product = value),
//                     items: _products
//                         .map((product) => DropdownMenuItem(
//                               child: Text(product.productKey),
//                               value: product,
//                             ))
//                         .toList(),
//                   ),
//                   const SizedBox(height: 16),
//                   FlatButton(
//                     child: const Text('Create Invoice'),
//                     onPressed: (_email.isNotEmpty && _product != null)
//                         ? () => _createInvoice()
//                         : null,
//                   ),
//                   FlatButton(
//                     child: const Text('View PDF'),
//                     onPressed: (_invoice != null) ? () => _viewPdf() : null,
//                   ),
//                   FlatButton(
//                     child: const Text('View Portal'),
//                     onPressed: (_invoice != null) ? () => _viewPortal() : null,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:flutterwave/core/flutterwave.dart';
import 'package:flutterwave/utils/flutterwave_currency.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  PaymentState createState() => PaymentState();
}

class PaymentState extends State<Payment> {
  //use the currency you would like the use to Pay In, in this case used ngn currency
  final String currency = FlutterwaveCurrency.NGN;
  final formKey = GlobalKey<FormState>();
  final TextEditingController fullname = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController amount = TextEditingController();

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text('METROLIVESTOCK PAYMENT'),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Form(
                key: formKey,
                child: Column(children: [
                  const Padding(padding: EdgeInsets.all(10.0)),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                      controller: fullname,
                      decoration: const InputDecoration(labelText: "Full Name"),
                      validator: (value) =>
                          value!.isNotEmpty ? null : "Please fill in Your Name",
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                      controller: phone,
                      decoration:
                          const InputDecoration(labelText: "Phone Number"),
                      validator: (value) => value!.isNotEmpty
                          ? null
                          : "Please fill in Your Phone number",
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                      controller: email,
                      decoration: const InputDecoration(labelText: "Email"),
                      validator: (value) => value!.isNotEmpty
                          ? null
                          : "Please fill in Your Email",
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                      controller: amount,
                      decoration: const InputDecoration(labelText: "Amount"),
                      validator: (value) => value!.isNotEmpty
                          ? null
                          : "Please fill in the Amount you are Paying",
                    ),
                  ),
                  ElevatedButton(
                    child: const Text('Pay with Flutterwave'),
                    onPressed: () {
                      final name = fullname.text;
                      final userPhone = phone.text;
                      final userEmail = email.text;
                      final amountPaid = amount.text;

                      if (formKey.currentState!.validate()) {
                        _makeFlutterwavePayment(
                            context, name, userPhone, userEmail, amountPaid);
                      }
                    },
                  ),
                ]))));
  }

  //Add a method to make the flutter wave payment
  //This Method includes all the values needed to create the Flutterwave Instance
  void _makeFlutterwavePayment(BuildContext context, String fullname,
      String phone, String email, String amount) async {
    try {
      Flutterwave flutterwave = Flutterwave.forUIPayment(
          //the first 10 fields below are required/mandatory
          context: this.context,
          fullName: fullname,
          phoneNumber: phone,
          email: email,
          amount: amount,
          //Use your Public and Encription Keys from your Flutterwave account on the dashboard
          encryptionKey: "854f008d080f624b830f8c9c",
          publicKey: "FLWPUBK-7d13a2bde5439badafb01da933d37a1f-X",
          currency: currency,
          txRef: DateTime.now().toIso8601String(),
          //Setting DebugMode below to true since will be using test mode.
          //You can set it to false when using production environment.
          isDebugMode: true,
          //configure the the type of payments that your business will accept
          acceptCardPayment: true,
          acceptUSSDPayment: true,
          acceptAccountPayment: true,
          acceptFrancophoneMobileMoney: false,
          acceptGhanaPayment: false,
          acceptMpesaPayment: false,
          acceptRwandaMoneyPayment: false,
          acceptUgandaPayment: false,
          acceptZambiaPayment: false);

      final response = await flutterwave.initializeForUiPayments();
      if (response == null) {
        print("Transaction Failed");
      } else {
        if (response.status == "Transaction successful") {
          print(response.data);
          print(response.message);
        } else {
          print(response.message);
        }
      }
    } catch (error) {
      print(error);
    }
  }
}
