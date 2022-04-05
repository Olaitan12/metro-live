import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';
import '../widgets/text_style.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  //checkbox
  bool isChecked = false;

  //Invoice Information
  final TextEditingController orderIdController = TextEditingController();
  final TextEditingController orderDateController = TextEditingController();

  //Customer Information
  final TextEditingController customerNameController = TextEditingController();
  final TextEditingController customerAddressController =
      TextEditingController();
  final TextEditingController customerPhoneController = TextEditingController();
  final TextEditingController customerEmailController = TextEditingController();

//Optional Information
  final TextEditingController deliveryFeesController = TextEditingController();
  final TextEditingController advanceController = TextEditingController();
  final TextEditingController discountController = TextEditingController();
  final TextEditingController taxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Metro Transit Invoice'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.notifications,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.print_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            _InvoiceInformation(),
            const SizedBox(height: 10),
            _CustomerInformation(),
            const SizedBox(height: 10),
            _optionalInformation(),
            // const SizedBox(height: 10),
            _paidStamp(),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Export as PDF'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _InvoiceInformation() {
    return Container(
      height: 160,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.bottomLeft,
            child: const Text(
              'Invoice Information',
              style: h2Style,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            custom: true,
            label: 'Order ID',
            textEditingController: orderIdController,
            keyboardType: TextInputType.text,
            prefixIcon: const Icon(
              Icons.perm_identity,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            custom: true,
            label: 'Order Date',
            textEditingController: orderDateController,
            keyboardType: TextInputType.datetime,
            prefixIcon: const Icon(
              Icons.date_range,
            ),
          )
        ],
      ),
    );
  }

  Widget _CustomerInformation() {
    return Container(
      height: 280,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.bottomLeft,
            child: const Text(
              'Customer Information',
              style: h2Style,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            custom: true,
            label: 'Customer Name',
            textEditingController: customerNameController,
            keyboardType: TextInputType.name,
            prefixIcon: const Icon(
              Icons.people_alt,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            custom: true,
            label: 'Customer Address',
            textEditingController: customerAddressController,
            keyboardType: TextInputType.streetAddress,
            prefixIcon: const Icon(
              Icons.location_on_outlined,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            custom: true,
            label: 'Customer Phone',
            textEditingController: customerPhoneController,
            keyboardType: TextInputType.number,
            prefixIcon: const Icon(
              Icons.phone,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            custom: true,
            label: 'Customer Email',
            textEditingController: customerEmailController,
            keyboardType: TextInputType.emailAddress,
            prefixIcon: const Icon(
              Icons.email,
            ),
          )
        ],
      ),
    );
  }

  Widget _optionalInformation() {
    return Container(
      height: 280,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.bottomLeft,
            child: const Text(
              'Payment',
              style: h2Style,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            custom: true,
            label: 'Delivery Fees',
            textEditingController: deliveryFeesController,
            keyboardType: TextInputType.number,
            prefixIcon: const Icon(
              Icons.delivery_dining_outlined,
            ),
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          // CustomTextField(
          //   custom: true,
          //   label: 'Advance Paid',
          //   keyboardType: TextInputType.number,
          //   textEditingController: advanceController,
          //   prefixIcon: const Icon(
          //     Icons.money,
          //   ),
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // CustomTextField(
          //   custom: true,
          //   label: 'Tax Rate (%)',
          //   keyboardType: TextInputType.number,
          //   textEditingController: taxController,
          //   prefixIcon: const Icon(
          //     Icons.request_quote_outlined,
          //   ),
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // CustomTextField(
          //   custom: true,
          //   label: 'Discount Rate (%)',
          //   textEditingController: discountController,
          //   keyboardType: TextInputType.number,
          //   prefixIcon: const Icon(
          //     Icons.discount_outlined,
          //   ),
          // )
        ],
      ),
    );
  }

  _paidStamp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Checkbox(
          value: isChecked,
          checkColor: Colors.amber,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        const Text(
          'Paid Stamp',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
