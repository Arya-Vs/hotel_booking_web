import 'package:flutter/material.dart';
import 'package:hotel_booking/core/widgets/guest_header.dart';
import 'package:hotel_booking/core/widgets/identify_guest_card.dart';
import 'package:hotel_booking/core/widgets/payment_checkout_card.dart';
import 'package:hotel_booking/core/widgets/review_bill_card.dart';

class GuestCheckoutScreen extends StatefulWidget {
  const GuestCheckoutScreen({super.key});

  @override
  State<GuestCheckoutScreen> createState() => _GuestCheckoutScreenState();
}

class _GuestCheckoutScreenState extends State<GuestCheckoutScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GuestHeader(
              title: 'Guest Check-out',
              searchController: searchController,
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 30),
                child: Column(
                  children: [_buildMainSection(), const SizedBox(height: 18)],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMainSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 31,
          child: IdentifyGuestCard(
            onFindRoomGuest: () {},
            onAddChangeRooms: () {},
          ),
        ),
        const SizedBox(width: 22),
        Expanded(
          flex: 40,
          child: ReviewBillCard(onAdjustRoom101: () {}, onAdjustRoom103: () {}),
        ),
        const SizedBox(width: 22),
        Expanded(
          flex: 21,
          child: PaymentCheckoutCard(
            onProcessPayment: () {},
            onCombinedCheckout: () {},
            onPrintInvoice: () {},
            onEmailInvoice: () {},
          ),
        ),
      ],
    );
  }
}
