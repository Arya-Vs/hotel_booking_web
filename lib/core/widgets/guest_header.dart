import 'package:flutter/material.dart';

class GuestHeader extends StatelessWidget {
  final String title;
  final TextEditingController searchController;
  final bool showBackButton;

  const GuestHeader({
    super.key,
    required this.title,
    required this.searchController,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: 82,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Color(0xffdddddd),
          ),
        ),
      ),
      child: Row(
        children: [
          if (showBackButton) ...[
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 8),
          ],
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(width: 70),
          SizedBox(
            width: width > 1000 ? 675 : 450,
            height: 42,
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search Booking ID / Guest Name',
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Color(0xffcccccc),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Color(0xffcccccc),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}