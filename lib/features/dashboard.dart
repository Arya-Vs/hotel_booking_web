import 'package:flutter/material.dart';
import 'package:hotel_booking/core/theme/theme.dart';
import 'package:hotel_booking/core/widgets/bottom_section.dart';
import 'package:hotel_booking/core/widgets/dashboard_header.dart';
import 'package:hotel_booking/core/widgets/quick_actions.dart';
import 'package:hotel_booking/core/widgets/room_status.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: Column(
        children: [
          const DashboardHeader(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Main Dashboard',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                    ),
                  ),
                  const SizedBox(height: 18),
                  const QuickActions(),
                  const SizedBox(height: 18),
                  RoomNumbers(),
                  const SizedBox(height: 18),
                  BottomSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
