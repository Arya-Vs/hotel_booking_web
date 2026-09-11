import 'package:flutter/material.dart';
import 'package:hotel_booking/core/widgets/guest_checkin_widgets.dart';

class GuestCheckInReviewCard extends StatelessWidget {
  const GuestCheckInReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GuestCheckInWidgets.sectionCard(
      title: '2. Review & Update Details',
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          18,
          15,
          18,
          15,
        ),
        child: Column(
          children: [

            Row(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: GuestCheckInWidgets.labelField(
                    'Room No.',
                    GuestCheckInWidgets.roomNumber(),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: GuestCheckInWidgets.labelField(
                    'Rent',
                    GuestCheckInWidgets.textField(
                      '1200.00',
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: GuestCheckInWidgets.labelField(
                    'GST',
                    GuestCheckInWidgets.gstField(),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  flex: 2,
                  child: GuestCheckInWidgets.labelField(
                    'Tendand Name',
                    GuestCheckInWidgets.textField(''),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: GuestCheckInWidgets.labelField(
                    'No-of Adults',
                    GuestCheckInWidgets.textField(
                      '02',
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: GuestCheckInWidgets.labelField(
                    'No-of Kids',
                    GuestCheckInWidgets.textField(
                      '00',
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 14),


            Row(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [

                Expanded(
                  child: Column(
                    children: [

                      Row(
                        children: [
                          Expanded(
                            child:
                                GuestCheckInWidgets.labelField(
                              'Checkout Date',
                              GuestCheckInWidgets.dateField(),
                            ),
                          ),

                          const SizedBox(width: 12),

                          Expanded(
                            child:
                                GuestCheckInWidgets.labelField(
                              'Update ID Proof',
                              GuestCheckInWidgets.fileField(),
                            ),
                          ),

                          const SizedBox(width: 12),

                          Expanded(
                            child:
                                GuestCheckInWidgets.labelField(
                              'Update No. of Adults/Kids',
                              GuestCheckInWidgets.textField(
                                '02',
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 14),


                      Row(
                        children: [
                          Expanded(
                            child:
                                GuestCheckInWidgets.uploadBox(),
                          ),

                          const SizedBox(width: 12),

                          Expanded(
                            child:
                                GuestCheckInWidgets.labelField(
                              'Guest Count',
                              GuestCheckInWidgets.dropdown(
                                value: '02',
                                items: const [
                                  '01',
                                  '02',
                                  '03',
                                  '04',
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(width: 12),

                          Expanded(
                            child:
                                GuestCheckInWidgets.labelField(
                              'Update Guest Name',
                              GuestCheckInWidgets.textField(
                                'Mathew Hyden',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 12),


                SizedBox(
                  width: 200,
                  height: 138,
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: const Color(0xffedf0f2),
                      borderRadius:
                          BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Additional charges',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        const SizedBox(height: 12),

                        _chargeRow(
                          'Room Charge',
                          '2beds',
                        ),

                        const SizedBox(height: 8),

                        _chargeRow(
                          'Extra Charge',
                          '2000',
                        ),

                        const SizedBox(height: 8),

                        _chargeRow(
                          'Tax',
                          '2500.00',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),


            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 90,
                  height: 34,
                  child:
                      GuestCheckInWidgets.creamButton(
                    icon: Icons.delete_outline,
                    text: 'Delete',
                    onPressed: () {},
                    color: const Color(0xffedf0f2),
                  ),
                ),

                const SizedBox(width: 8),

                SizedBox(
                  width: 90,
                  height: 34,
                  child:
                      GuestCheckInWidgets.creamButton(
                    icon: Icons.edit_outlined,
                    text: 'Edit',
                    onPressed: () {},
                    color: const Color(0xffedf0f2),
                  ),
                ),

                const SizedBox(width: 8),

                SizedBox(
                  width: 90,
                  height: 34,
                  child:
                      GuestCheckInWidgets.creamButton(
                    icon: Icons.sync,
                    text: 'Update',
                    onPressed: () {},
                    color: const Color(0xffedf0f2),
                  ),
                ),

                const SizedBox(width: 8),

                SizedBox(
                  width: 180,
                  height: 34,
                  child:
                      GuestCheckInWidgets.blueButton(
                    text: 'Confirm Guest Details',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _chargeRow(
    String title,
    String value,
  ) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}