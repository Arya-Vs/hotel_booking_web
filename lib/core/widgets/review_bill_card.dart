import 'package:flutter/material.dart';
import 'package:hotel_booking/core/widgets/charges_table.dart';
import 'package:hotel_booking/core/widgets/checkout_widgets.dart';


class ReviewBillCard extends StatelessWidget {
  final VoidCallback onAdjustRoom101;
  final VoidCallback onAdjustRoom103;

  const ReviewBillCard({
    super.key,
    required this.onAdjustRoom101,
    required this.onAdjustRoom103,
  });

  @override
  Widget build(BuildContext context) {
    return CheckoutSectionCard(
      title: '2. Review & Finalize Bill',
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          18,
          14,
          18,
          14,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '[Room 101]',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 2),
            const Text(
              '(Nights: 2, Rate: ₹1200.00, Total: ₹2400.00)',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 13),
            const Text(
              'Additional Charges (Add Items)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 7),
            Row(
              children: [
                const Expanded(
                  child: CheckoutSearchChargeField(),
                ),
                const SizedBox(width: 8),
                const CheckoutGreyButton(
                  text: 'Mini-bar',
                ),
                const SizedBox(width: 8),
                const CheckoutGreyButton(
                  text: 'Laundry',
                ),
                const SizedBox(width: 8),
                const CheckoutPlusButton(),
              ],
            ),
            const SizedBox(height: 10),
            const ChargesTable(
              rows: [
                [
                  'Mini-bar (Water x2)',
                  '03/04/2026',
                  '₹100.00',
                ],
                [
                  'Room Service',
                  '03/04/2026',
                  '₹1200.00',
                ],
                [
                  'Restaurant Bill (Room 101)',
                  '03/04/2026',
                  '₹850.00',
                ],
              ],
            ),
            const SizedBox(height: 10),
            const CheckoutTotalRow(
              title: 'Room 101 Total',
              amount: '₹4550.00',
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const CheckoutCreamButton(
                  icon: Icons.print,
                  text: 'Print Room 101 Invoice',
                ),
                const SizedBox(width: 8),
                CheckoutBlueButton(
                  text: '⇄ Adjust Charges (Room 101)',
                  onPressed: onAdjustRoom101,
                ),
              ],
            ),
            const SizedBox(height: 18),
            const Text(
              '[Room 103]',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 2),
            const Text(
              '(Nights: 2, Rate: ₹1200.00, Total: ₹2400.00)',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'Additional Charges (Add Items)',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const CheckoutGreyButton(
                  text: 'Mini-bar',
                ),
                const SizedBox(width: 7),
                const CheckoutGreyButton(
                  text: 'Laundry',
                ),
                const SizedBox(width: 7),
                const CheckoutPlusButton(),
              ],
            ),
            const SizedBox(height: 9),
            const ChargesTable(
              rows: [
                [
                  'Mini-bar (Chips)',
                  '03/04/2026',
                  '₹50.00',
                ],
                [
                  'Restaurant Bill (Room 103)',
                  '03/04/2026',
                  '₹1200.00',
                ],
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const CheckoutCreamButton(
                  icon: Icons.print,
                  text: 'Print Room 103 Invoice',
                ),
                const SizedBox(width: 8),
                CheckoutBlueButton(
                  text: '⇄ Adjust Charges (Room 103)',
                  onPressed: onAdjustRoom103,
                ),
              ],
            ),
            const SizedBox(height: 13),
            const Divider(),
            const SizedBox(height: 7),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Selected Rooms Combined Total: ₹8200.00',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}