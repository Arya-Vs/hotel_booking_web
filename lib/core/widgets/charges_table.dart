import 'package:flutter/material.dart';

class ChargesTable extends StatelessWidget {
  final List<List<String>> rows;

  const ChargesTable({
    super.key,
    required this.rows,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xfffffef5),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffd9d9c8),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            height: 40,
            color: const Color(0xfffaf9ef),
            child: const Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Room Charges & External Bills',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Date',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Amount',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          for (final row in rows)
            Container(
              height: 40,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0xffdeded4),
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(row[0]),
                    ),
                  ),
                  Expanded(
                    child: Text(row[1]),
                  ),
                  Expanded(
                    child: Text(
                      row[2],
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
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