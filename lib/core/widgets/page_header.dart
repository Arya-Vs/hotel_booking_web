import 'package:flutter/material.dart';
import 'package:hotel_booking/core/theme/theme.dart';

class PageHeader extends StatelessWidget {
  final String title;
  final String searchHint;
  final Widget? trailing;

  const PageHeader({
    super.key,
    required this.title,
    this.searchHint =
        'Search guests, rooms, reservations, staff...',
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      padding: const EdgeInsets.symmetric(
        horizontal: 26,
      ),
      decoration: const BoxDecoration(
        color: Colors.red,
        border: Border(
          bottom: BorderSide(
            color: Colors.amberAccent,
          ),
        ),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: AppTheme.textColor,
            ),
          ),

          const SizedBox(width: 40),

          SizedBox(
            width: 430,
            child: TextField(
              decoration: InputDecoration(
                hintText: searchHint,
                prefixIcon: const Icon(
                  Icons.search_rounded,
                ),
              ),
            ),
          ),

          const Spacer(),

          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}



class CustomPanel extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;

  const CustomPanel({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(14),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppTheme.borderColor,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x12000000),
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}


class PrimaryButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final VoidCallback? onPressed;

  const PrimaryButton({
    super.key,
    required this.label,
    this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: icon != null
          ? Icon(icon, size: 18)
          : const SizedBox.shrink(),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppTheme.primaryColor,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      ),
    );
  }
}


class SoftButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final VoidCallback? onPressed;

  const SoftButton({
    super.key,
    required this.label,
    this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: icon != null
          ? Icon(icon, size: 17)
          : const SizedBox.shrink(),
      label: Text(label),
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 15, 218, 49),
        backgroundColor: const Color(0xFFF5F3E9),
        side: const BorderSide(
          color: Color(0xFFE2DED0),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 11,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
      ),
    );
  }
}