import 'package:flutter/material.dart';
import 'package:hotel_booking/core/theme/theme.dart';
import 'package:hotel_booking/core/widgets/guest_checkin_widgets.dart';

class GuestCheckInBookingCard extends StatelessWidget {
  const GuestCheckInBookingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GuestCheckInWidgets.sectionCard(
      title: '1. Select Booking & Guest',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: GuestCheckInWidgets.searchBox(),
          ),

          const SizedBox(height: 15),

          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              'Select Customer',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          const SizedBox(height: 5),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              children: [
                Expanded(
                  child: GuestCheckInWidgets.dropdown(
                    value: 'Name/Phone number',
                    items: const [
                      'Name/Phone number',
                    ],
                  ),
                ),

                const SizedBox(width: 10),

                GuestCheckInWidgets.blueButton(
                  icon: Icons.add,
                  text: 'Add Guest',
                  onPressed: () {},
                ),
              ],
            ),
          ),

          const SizedBox(height: 17),

          Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: AppTheme.primaryLight,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: GuestCheckInWidgets.infoText(
                          'Booking Date',
                          '02/04/2026',
                        ),
                      ),
                      Expanded(
                        child: GuestCheckInWidgets.infoText(
                          'Booking Time',
                          '07:00 PM',
                          icon: Icons.access_time,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}