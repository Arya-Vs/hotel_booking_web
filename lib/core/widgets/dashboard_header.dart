import 'package:flutter/material.dart';
import 'package:hotel_booking/core/theme/theme.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: AppTheme.primaryColor,
              borderRadius: BorderRadius.circular(11),
            ),
            child: const Icon(
              Icons.dashboard_customize_outlined,
              color: Colors.white,
              size: 18,
            ),
          ),
          const SizedBox(width: 15),
          Container(
            width: 180,
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  foregroundColor: Colors.white,
                  radius: 15,
                  backgroundImage: AssetImage(
                    'assets/images/raintech.jpeg',
                  ),
                ),
                const SizedBox(width: 9),
                const Column(
                  children: [
                    Text(
                      'Raintech',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'HOTEL',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 18,
                ),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.centerRight,
              child: Transform.translate(
                offset: const Offset(20, 0),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 1200,
                    maxHeight: 40,
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(
                        255,
                        231,
                        229,
                        229,
                      ),
                      hintText:
                          'Search guests, rooms, reservations, staff...',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 40),
          Container(
            height: 44,
            padding: const EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
              color: const Color.fromARGB(
                255,
                231,
                229,
                229,
              ),
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              children: [
                Icon(Icons.calendar_month, size: 18),
                SizedBox(width: 8),
                Text(
                  'Thu, Jul 23, 2026 | 9:30 AM',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Container(
            height: 44,
            padding: const EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
              color: AppTheme.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.bolt,
                  size: 18,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
                Text(
                  'Quick Actions',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 15),
          const Icon(Icons.notifications_none_rounded),
          const SizedBox(width: 15),
          const CircleAvatar(
            radius: 17,
            backgroundImage: AssetImage(
              'assets/images/profile.jpg',
            ),
          ),
        ],
      ),
    );
  }
}