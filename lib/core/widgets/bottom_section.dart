import 'package:flutter/material.dart';
import 'package:hotel_booking/core/widgets/quick_room_actions.dart';
import 'package:hotel_booking/core/widgets/vacate_rooms.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: VacateRooms(),
        ),
        const SizedBox(width: 16),
        const Expanded(
          child: QuickRoomActions(),
        ),
      ],
    );
  }
}