import 'package:flutter/material.dart';
import 'package:hotel_booking/core/widgets/checkout_widgets.dart';
import 'package:hotel_booking/core/widgets/room_table.dart';


class IdentifyGuestCard extends StatelessWidget {
  final VoidCallback onFindRoomGuest;
  final VoidCallback onAddChangeRooms;

  const IdentifyGuestCard({
    super.key,
    required this.onFindRoomGuest,
    required this.onAddChangeRooms,
  });

  @override
  Widget build(BuildContext context) {
    return CheckoutSectionCard(
      title: '1. Identify Departing Guest',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              18,
              15,
              18,
              12,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CheckoutLabel(
                        title: 'Find Guest',
                        child: CheckoutDropdown(
                          value: 'Search Guest',
                          items: const [
                            'Search Guest',
                            'Mathew Hyden',
                            'Sarah Thompson',
                            'James Smith',
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CheckoutLabel(
                        title: 'Identify by Room',
                        child: CheckoutNumberField(
                          value: '1',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: CheckoutDropdown(
                        value: 'Select Guest from List',
                        items: const [
                          'Select Guest from List',
                          'Mathew Hyden',
                          'Sarah Thompson',
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    CheckoutBlueButton(
                      text: 'Find Room/Guest',
                      onPressed: onFindRoomGuest,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(
              18,
              14,
              18,
              14,
            ),
            color: const Color(0xffedf3f8),
            child: Row(
              children: [
                Expanded(
                  child: CheckoutSimpleInfo(
                    title: 'Guest Name',
                    value: 'Mathew Hyden',
                  ),
                ),
                Expanded(
                  child: CheckoutSimpleInfo(
                    title: 'Room No.',
                    value: '🛏 101',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const RoomTable(),
          const SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: SizedBox(
              width: double.infinity,
              height: 41,
              child: ElevatedButton.icon(
                onPressed: onAddChangeRooms,
                icon: const Icon(
                  Icons.search,
                  size: 20,
                ),
                label: const Text(
                  'Add/Change Selected Rooms',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xfff1eee0),
                  foregroundColor: Colors.black87,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}