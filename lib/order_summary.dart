import 'package:flutter/material.dart';

import 'order.dart';

class OrderSummaryScreen extends StatelessWidget {
  const OrderSummaryScreen({super.key});

  static const String itemName = 'Vegetable Pizza';
  static const double unitPrice = 12.5;
  static const int quantity = 2;

  @override
  Widget build(BuildContext context) {
    final double total = orderTotal(unitPrice: unitPrice, quantity: quantity);

    return Scaffold(
      appBar: AppBar(title: const Text('Order Summary')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Item: $itemName'),
            const SizedBox(height: 10),
            const Text('Quantity: $quantity'),
            const SizedBox(height: 10),
            Text('Total: RM ${total.toStringAsFixed(2)}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
