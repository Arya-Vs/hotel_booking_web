import 'package:flutter/material.dart';
import 'package:hotel_booking/core/widgets/guest_checkin_bottom_section.dart';
import 'package:hotel_booking/core/widgets/guest_checkin_top_section.dart';
import 'package:hotel_booking/core/widgets/guest_header.dart';
import 'package:hotel_booking/model/guest.dart';

class GuestCheckInScreen extends StatefulWidget {
  const GuestCheckInScreen({super.key});

  @override
  State<GuestCheckInScreen> createState() => _GuestCheckInScreenState();
}

class _GuestCheckInScreenState extends State<GuestCheckInScreen> {
  final TextEditingController searchController = TextEditingController();

  final List<Guest> guests = [
    Guest(
      room: '102',
      rent: '₹1200.00',
      gst: '₹112.00',
      name: 'Mathew Hyden',
      adults: '02',
      kids: '00',
      senior: '02',
      checkout: '02/04/2026',
      proof: 'Mathewhyden.pdf',
    ),
    Guest(
      room: '103',
      rent: '₹1300.00',
      gst: '₹115.00',
      name: 'Sarah Thompson',
      adults: '02',
      kids: '03',
      senior: '03',
      checkout: '03/04/2026',
      proof: 'sarahthompson.pdf',
    ),
    Guest(
      room: '104',
      rent: '₹1400.00',
      gst: '₹110.00',
      name: 'James Smith',
      adults: '02',
      kids: '04',
      senior: '04',
      checkout: '04/04/2026',
      proof: 'jamessmithid.pdf',
    ),
    Guest(
      room: '105',
      rent: '₹1500.00',
      gst: '₹122.00',
      name: 'Emily Clark',
      adults: '02',
      kids: '05',
      senior: '05',
      checkout: '05/04/2026',
      proof: 'emilyclarkid.pdf',
    ),
    Guest(
      room: '106',
      rent: '₹1600.00',
      gst: '₹125.00',
      name: 'Michael Brown',
      adults: '02',
      kids: '06',
      senior: '00',
      checkout: '06/04/2026',
      proof: 'michaelBrown.pdf',
    ),
    Guest(
      room: '107',
      rent: '₹1700.00',
      gst: '₹150.00',
      name: 'Jessica Lee',
      adults: '02',
      kids: '07',
      senior: '07',
      checkout: '07/04/2026',
      proof: 'jessicaleeid.pdf',
    ),
    Guest(
      room: '108',
      rent: '₹1800.00',
      gst: '₹132.00',
      name: 'David Wilson',
      adults: '02',
      kids: '08',
      senior: '00',
      checkout: '08/04/2026',
      proof: 'davidwilsonid.pdf',
    ),
    Guest(
      room: '109',
      rent: '₹1900.00',
      gst: '₹135.00',
      name: 'Sophia Martinez',
      adults: '02',
      kids: '09',
      senior: '00',
      checkout: '09/04/2026',
      proof: 'sophiamartinez.pdf',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // final width = constraints.maxWidth;

            return Column(
              children: [
                GuestHeader(
                  title: 'Guest Check-in',
                  searchController: searchController,
                ),

                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(30, 18, 30, 30),
                    child: Column(
                      children: [
                        const GuestCheckInTopSection(),

                        const SizedBox(height: 20),

                        GuestCheckInBottomSection(guests: guests),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
