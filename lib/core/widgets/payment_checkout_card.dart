import 'package:flutter/material.dart';
import 'package:hotel_booking/core/widgets/checkout_widgets.dart';

class PaymentCheckoutCard extends StatelessWidget {
  final VoidCallback onProcessPayment;
  final VoidCallback onCombinedCheckout;
  final VoidCallback onPrintInvoice;
  final VoidCallback onEmailInvoice;

  const PaymentCheckoutCard({
    super.key,
    required this.onProcessPayment,
    required this.onCombinedCheckout,
    required this.onPrintInvoice,
    required this.onEmailInvoice,
  });

  @override
  Widget build(BuildContext context) {
    const primary = Color(0xff06457d);

    return CheckoutSectionCard(
      title: '3. Payment & Check-out',
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          17,
          17,
          17,
          15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CheckoutPaymentAmount(
              title: 'Total Amount Due',
              amount: '₹8200.00',
            ),
            const SizedBox(height: 3),
            const Text(
              '(Selected Rooms)',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 2),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                '₹0.00',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 14),
            const Divider(),
            const SizedBox(height: 12),
            const Text(
              'Payment Method',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 6),
            const CheckoutDropdown(
              value: 'Credit Card',
              items: [
                'Credit Card',
                'Cash',
                'M-Pay',
              ],
            ),
            const SizedBox(height: 14),
            const Text(
              'Payment Amount',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 6),
            const CheckoutNormalInput(
              value: '₹8200.00',
            ),
            const SizedBox(height: 14),
            SizedBox(
              width: double.infinity,
              height: 135,
              child: ElevatedButton(
                onPressed: onProcessPayment,
                style: ElevatedButton.styleFrom(
                  backgroundColor: primary,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Process Payment & Check-out',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 7),
                    Text(
                      'Proceed with Room 101 Check-out',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Complete Check-out',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 9),
            SizedBox(
              width: double.infinity,
              height: 125,
              child: ElevatedButton(
                onPressed: onCombinedCheckout,
                style: ElevatedButton.styleFrom(
                  backgroundColor: primary,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Payment & Check-out',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Combine and Proceed with',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Selected Rooms Check-out',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 85),
            const Divider(),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 39,
              child: CheckoutCreamButton(
                icon: Icons.print,
                text: 'Print Final Invoice',
                onPressed: onPrintInvoice,
              ),
            ),
            const SizedBox(height: 9),
            SizedBox(
              width: double.infinity,
              height: 39,
              child: CheckoutCreamButton(
                icon: Icons.email_outlined,
                text: 'Email Final Invoice',
                onPressed: onEmailInvoice,
              ),
            ),
          ],
        ),
      ),
    );
  }
}