import 'package:flutter/material.dart';
import 'package:hotel_booking/core/theme/theme.dart';

class OperationalOverview extends StatelessWidget {
  const OperationalOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 232,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppTheme.borderColor,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Operational Overview',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: _buildOverviewBox(
                            'Occupancy',
                            '4%',
                            color: const Color.fromARGB(
                              255,
                              158,
                              199,
                              233,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: _buildOverviewBox(
                            'Pending Check-ins',
                            '0',
                            color: const Color.fromARGB(
                              255,
                              214,
                              213,
                              213,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: _buildOverviewBox(
                            'Pending Departures',
                            '0',
                            color: const Color.fromARGB(
                              255,
                              214,
                              213,
                              213,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: _buildOverviewBox(
                            'Revenue Today',
                            '\$ 0',
                            color: const Color.fromARGB(
                              255,
                              186,
                              235,
                              188,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOverviewBox(
    String title,
    String value, {
    Color color = Colors.white,
  }) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: AppTheme.borderColor,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}