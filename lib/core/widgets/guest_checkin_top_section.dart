import 'package:flutter/material.dart';
import 'package:hotel_booking/core/widgets/guest_checkin_booking_card.dart';
import 'package:hotel_booking/core/widgets/guest_checkin_review_card.dart';


class GuestCheckInTopSection extends StatelessWidget {
  const GuestCheckInTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.stretch,
        children: const [
          Expanded(
            flex: 32,
            child: GuestCheckInBookingCard(),
          ),

          SizedBox(width: 22),

          Expanded(
            flex: 68,
            child: GuestCheckInReviewCard(),
          ),
        ],
      ),
    );
  }
}