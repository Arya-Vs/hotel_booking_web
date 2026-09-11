import 'package:flutter/material.dart';

class RoomTable extends StatelessWidget {
  const RoomTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xffd4d4d4),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Container(
              height: 42,
              color: const Color(0xfffafafa),
              child: const Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Room',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Stay Dates',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Actions',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _roomRow(
              '101',
              '02/04/2026-04/04/2026',
            ),
            _roomRow(
              '103',
              '02/04/2026-04/04/2026',
            ),
          ],
        ),
      ),
    );
  }

  Widget _roomRow(
    String room,
    String date,
  ) {
    return Container(
      height: 42,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color(0xffdddddd),
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(room),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(date),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (_) {},
                  visualDensity: VisualDensity.compact,
                ),
                const Text(
                  'Select for Check-out',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}