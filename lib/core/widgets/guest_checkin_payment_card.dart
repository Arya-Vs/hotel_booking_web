import 'package:flutter/material.dart';
import 'package:hotel_booking/core/widgets/guest_checkin_widgets.dart';

class GuestCheckInPaymentCard extends StatelessWidget {
  const GuestCheckInPaymentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GuestCheckInWidgets.sectionCard(
      title: '3. Finalize Check-in & Payment',
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          18,
          15,
          18,
          12,
        ),
        child: Column(
          children: [
            GuestCheckInWidgets.amountRow(
              'Room Charge',
              '₹2500.00',
            ),

            const SizedBox(height: 10),

            GuestCheckInWidgets.amountRow(
              'Extra Charges',
              '₹2500.00',
            ),

            const SizedBox(height: 10),

            GuestCheckInWidgets.amountRow(
              'Tax',
              '₹0.00',
            ),

            const SizedBox(height: 12),

            const Divider(),

            const SizedBox(height: 7),

            GuestCheckInWidgets.amountRow(
              'Total Amount:',
              '₹2500.00',
              big: true,
            ),

            const SizedBox(height: 12),

            const Divider(),

            const SizedBox(height: 7),

            GuestCheckInWidgets.amountRow(
              'Total Paid:',
              '₹2500.00',
              big: true,
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color(0xff034383),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(8),
                  ),
                ),
                child: const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Complete Check-in',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 8),

            Row(
              children: [
                Expanded(
                  child:
                      GuestCheckInWidgets.smallButton(
                    icon: Icons.download,
                    text: 'Get Data',
                  ),
                ),

                const SizedBox(width: 7),

                Expanded(
                  child:
                      GuestCheckInWidgets.smallButton(
                    icon: Icons.edit,
                    text: 'M-Pay',
                  ),
                ),

                const SizedBox(width: 7),

                Expanded(
                  child:
                      GuestCheckInWidgets.smallButton(
                    icon: Icons.print,
                    text: 'Print',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 7),

            SizedBox(
              width: double.infinity,
              height: 38,
              child:
                  GuestCheckInWidgets.smallButton(
                icon: Icons.print,
                text: 'Print Registration Card',
              ),
            ),

            const SizedBox(height: 7),

            Row(
              children: [
                Expanded(
                  child:
                      GuestCheckInWidgets.smallButton(
                    icon: Icons.download,
                    text: 'Download Folio',
                  ),
                ),

                const SizedBox(width: 8),

                Expanded(
                  child:
                      GuestCheckInWidgets.blueButton(
                    text: 'Complete Check-in',
                    onPressed: () {},
                    height: 38,
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