import 'package:flutter/material.dart';
import 'package:hotel_booking/core/widgets/page_header.dart';

class QuickRoomActions extends StatelessWidget {
  const QuickRoomActions({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: CustomPanel(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Quick Room Status Changer & Actions',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(Icons.keyboard_arrow_down),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 12,
                          top: -7,
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4,
                            ),
                            child: const Text(
                              'Room #',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 15,
                          top: 15,
                          child: Text(
                            '------',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.cleaning_services),
                      label: const Text(
                        'Cleaning done, ready to serve',
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFB9E0C5),
                        foregroundColor: Colors.black87,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Set all Dirty to Cleaning',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'View All Maintenance',
                      textAlign: TextAlign.center,
                    ),
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