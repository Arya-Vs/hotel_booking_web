import 'package:flutter/material.dart';
import 'package:hotel_booking/core/theme/theme.dart';

class GuestCheckInWidgets {
  static Widget sectionCard({
    required String title,
    required Widget child,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(
          color: const Color(0xffd4d4d4),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x12000000),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            height: 45,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            alignment: Alignment.centerLeft,
            color: AppTheme.primaryColor,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }

  static Widget searchBox() {
    return Center(
      child: SizedBox(
        height: 40,
        width: 420,
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search Booking ID / Guest Name',
            prefixIcon: const Icon(
              Icons.search,
              size: 21,
            ),
            contentPadding: EdgeInsets.zero,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

  static Widget infoText(
    String title,
    String value, {
    IconData? icon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 7),
        Row(
          children: [
            Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            if (icon != null) ...[
              const SizedBox(width: 5),
              Icon(
                icon,
                size: 18,
              ),
            ],
          ],
        ),
      ],
    );
  }

  static Widget roomNumber() {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xffffe9a9),
        borderRadius: BorderRadius.circular(7),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.bed,
            size: 21,
          ),
          SizedBox(width: 7),
          Text(
            '101',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  static Widget gstField() {
    return SizedBox(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xffedf0f2),
          hintText: '112.00',
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: const BorderSide(
              color: Color(0xffd5d8da),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: const BorderSide(
              color: Color(0xffd5d8da),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: const BorderSide(
              color: Color(0xffd5d8da),
            ),
          ),
        ),
      ),
    );
  }

  static Widget dateField() {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: const Color(0xffd5d8da),
        ),
      ),
      child: const Row(
        children: [
          Expanded(
            child: Text(
              '02/04/2026',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Icon(
            Icons.calendar_month_outlined,
            size: 19,
          ),
        ],
      ),
    );
  }

  static Widget fileField() {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffedf0f2),
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: const Color(0xffd5d8da),
        ),
      ),
      child: const Row(
        children: [
          Expanded(
            child: Text(
              'mathewhyden...',
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Icon(
            Icons.description_outlined,
            size: 19,
          ),
        ],
      ),
    );
  }

  static Widget uploadBox() {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: const Color(0xffd5d8da),
        ),
      ),
      child: const Row(
        children: [
          Expanded(
            child: Text(
              'Upload ID Proof',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ),
          SizedBox(width: 6),
          Icon(
            Icons.upload_file,
            size: 18,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }

  static Widget labelField(
    String label,
    Widget child,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 6),
        child,
      ],
    );
  }

  static Widget textField(String text) {
    return Container(
      height: 36,
      padding: const EdgeInsets.symmetric(
        horizontal: 11,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffedf0f2),
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: const Color(0xffd5d8da),
        ),
      ),
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }

  static Widget dropdown({
    required String value,
    required List<String> items,
  }) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffedf0f2),
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: const Color(0xffd5d8da),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          isExpanded: true,
          icon: const Icon(
            Icons.keyboard_arrow_down,
          ),
          items: items
              .map(
                (item) => DropdownMenuItem(
                  value: item,
                  child: Text(
                    item,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
              .toList(),
          onChanged: (_) {},
        ),
      ),
    );
  }

  static Widget creamButton({
    required IconData icon,
    required String text,
    required VoidCallback onPressed,
    Color color = const Color(0xfffff4df),
  }) {
    return SizedBox(
      height: 34,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            horizontal: 7,
          ),
          backgroundColor: color,
          foregroundColor: Colors.black87,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 15,
            ),
            const SizedBox(width: 4),
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  text,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget blueButton({
    IconData? icon,
    required String text,
    required VoidCallback onPressed,
    double height = 40,
  }) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                size: 20,
              ),
              const SizedBox(width: 7),
            ],
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget smallButton({
    required IconData icon,
    required String text,
    Color color = const Color(0xfff1eee1),
  }) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.black87,
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 17,
          ),
          const SizedBox(width: 5),
          Flexible(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget amountRow(
    String title,
    String amount, {
    bool big = false,
  }) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: big ? 14 : 13,
              fontWeight:
                  big ? FontWeight.w700 : FontWeight.w500,
            ),
          ),
        ),
        Text(
          amount,
          style: TextStyle(
            fontSize: big ? 14 : 13,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}