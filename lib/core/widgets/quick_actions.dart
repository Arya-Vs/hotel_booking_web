import 'package:flutter/material.dart';
import 'package:hotel_booking/core/theme/theme.dart';
import 'package:hotel_booking/core/widgets/operational_overview.dart';
import 'package:hotel_booking/features/checkin.dart';
import 'package:hotel_booking/features/checkout.dart';


class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    final actions = <({
      String label,
      IconData icon,
      Color color,
      VoidCallback? onTap,
    })>[
      (
        label: 'Guest Check-in',
        icon: Icons.assignment_ind_outlined,
        color: const Color(0xFFD7F2E0),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>  GuestCheckInScreen(),
            ),
          );
        },
      ),
      (
        label: 'Guest Check-out',
        icon: Icons.logout_rounded,
        color: const Color(0xFFF8D7D7),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GuestCheckoutScreen(),
            ),
          );
        },
      ),
      (
        label: 'Reservations',
        icon: Icons.event_available_outlined,
        color: const Color(0xFFDCE6FA),
        onTap: null,
      ),
      (
        label: 'Housekeeping',
        icon: Icons.cleaning_services_outlined,
        color: const Color(0xFFD8F0F1),
        onTap: null,
      ),
      (
        label: 'Restaurant',
        icon: Icons.restaurant_outlined,
        color: const Color(0xFFF7E2C3),
        onTap: null,
      ),
      (
        label: 'WhatsApp',
        icon: Icons.chat_outlined,
        color: const Color(0xFFDDF1E2),
        onTap: null,
      ),
      (
        label: 'Rooms',
        icon: Icons.apartment_outlined,
        color: const Color(0xFFEBDDF7),
        onTap: null,
      ),
      (
        label: 'Staff',
        icon: Icons.badge_outlined,
        color: const Color(0xFFDCE6FA),
        onTap: null,
      ),
      (
        label: 'Floors',
        icon: Icons.layers_outlined,
        color: const Color(0xFFD8F0F1),
        onTap: null,
      ),
      (
        label: 'Reports',
        icon: Icons.bar_chart_outlined,
        color: const Color(0xFFF8E8B5),
        onTap: null,
      ),
      (
        label: 'Settings',
        icon: Icons.tune_rounded,
        color: const Color(0xFFE5E7EB),
        onTap: null,
      ),
      (
        label: 'New: Group Booking',
        icon: Icons.group_outlined,
        color: const Color(0xFFDCE6FA),
        onTap: null,
      ),
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        final showSideContainer = constraints.maxWidth >= 1000;
        final columns = showSideContainer ? 6 : 2;

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: actions.length,
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  mainAxisExtent: 110,
                ),
                itemBuilder: (context, index) {
                  final action = actions[index];

                  return InkWell(
                    onTap: action.onTap,
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: AppTheme.borderColor,
                        ),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x10000000),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 23,
                            backgroundColor: action.color,
                            child: Icon(
                              action.icon,
                              color: AppTheme.primaryColor,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            action.label,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            if (showSideContainer) ...[
              const SizedBox(width: 16),
              const OperationalOverview(),
            ],
          ],
        );
      },
    );
  }
}