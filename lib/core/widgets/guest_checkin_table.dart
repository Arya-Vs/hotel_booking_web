import 'package:flutter/material.dart';
import 'package:hotel_booking/model/guest.dart';

class GuestCheckInTable extends StatelessWidget {
  final List<Guest> guests;

  const GuestCheckInTable({
    super.key,
    required this.guests,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(
          color: const Color(0xffd6d6d6),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          headingRowHeight: 47,
          dataRowMinHeight: 51,
          dataRowMaxHeight: 51,
          horizontalMargin: 12,
          columnSpacing: 23,
          headingRowColor: WidgetStateProperty.all(
            const Color(0xfff8f8f8),
          ),
          columns: const [
            DataColumn(
              label: Text(
                'ROOM NO.',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'RENT (₹)',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'GST',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'NAME',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'NO:OF ADULTS',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'NO:OF KIDS',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'SENIOR CITIZEN',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'CHECKOUT DATE',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'ID PROOF',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'ACTION',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
          rows: guests.map(_guestRow).toList(),
        ),
      ),
    );
  }

  DataRow _guestRow(Guest guest) {
    return DataRow(
      cells: [
        DataCell(
          Text(guest.room),
        ),

        DataCell(
          Text(
            guest.rent,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        DataCell(
          Text(guest.gst),
        ),

        DataCell(
          Text(guest.name),
        ),

        DataCell(
          Text(guest.adults),
        ),

        DataCell(
          Text(guest.kids),
        ),

        DataCell(
          Text(guest.senior),
        ),

        DataCell(
          Text(guest.checkout),
        ),

        DataCell(
          SizedBox(
            width: 110,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    guest.proof,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Icon(
                  Icons.description_outlined,
                  size: 18,
                ),
              ],
            ),
          ),
        ),

        DataCell(
          PopupMenuButton<String>(
            icon: const Icon(
              Icons.more_vert,
              size: 20,
            ),
            itemBuilder: (context) => const [
              PopupMenuItem(
                value: 'edit',
                child: Text('Edit'),
              ),
              PopupMenuItem(
                value: 'delete',
                child: Text('Delete'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}