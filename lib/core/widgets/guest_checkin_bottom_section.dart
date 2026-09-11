import 'package:flutter/material.dart';
import 'package:hotel_booking/core/widgets/guest_checkin_payment_card.dart';
import 'package:hotel_booking/core/widgets/guest_checkin_table.dart';
import 'package:hotel_booking/model/guest.dart';


class GuestCheckInBottomSection extends StatelessWidget {
  final List<Guest> guests;

  const GuestCheckInBottomSection({
    super.key,
    required this.guests,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 75,
          child: GuestCheckInTable(
            guests: guests,
          ),
        ),

        const SizedBox(width: 22),

        const Expanded(
          flex: 25,
          child: GuestCheckInPaymentCard(),
        ),
      ],
    );
  }
}