import 'package:flutter/material.dart';
import 'package:hotel_booking/model/room.dart';

class RoomNumbers extends StatelessWidget {
   RoomNumbers({super.key});

  final floor1 = [
    const Room(number: '101', status: RoomStatus.available),
    const Room(number: '102', status: RoomStatus.available),
    const Room(number: '103', status: RoomStatus.available),
    const Room(number: '104', status: RoomStatus.available),
    const Room(number: '105', status: RoomStatus.available),
    const Room(number: '106', status: RoomStatus.available),
    const Room(number: '107', status: RoomStatus.available),
    const Room(number: '108', status: RoomStatus.available),
    const Room(number: '109', status: RoomStatus.available),
    const Room(number: '110', status: RoomStatus.available),
    const Room(number: '111', status: RoomStatus.available),
    const Room(number: '112', status: RoomStatus.available),
    const Room(number: '113', status: RoomStatus.available),
    const Room(number: '114', status: RoomStatus.available),
    const Room(number: '115', status: RoomStatus.available),
    const Room(number: '116', status: RoomStatus.available),
    const Room(number: '102', status: RoomStatus.occupied),
    const Room(number: '103', status: RoomStatus.occupied),
    const Room(number: '104', status: RoomStatus.dirty),
    const Room(number: '105', status: RoomStatus.dirty),
    const Room(number: '106', status: RoomStatus.maintenance),
    const Room(number: '107', status: RoomStatus.maintenance),
    const Room(number: '108', status: RoomStatus.available),
    const Room(number: '109', status: RoomStatus.occupied),
    const Room(number: '110', status: RoomStatus.available),
    const Room(number: '111', status: RoomStatus.available),
    const Room(number: '112', status: RoomStatus.available),
    const Room(number: '113', status: RoomStatus.available),
    const Room(number: '114', status: RoomStatus.available),
    const Room(number: '115', status: RoomStatus.occupied),
    const Room(number: '116', status: RoomStatus.maintenance),
    const Room(number: '190', status: RoomStatus.maintenance),
  ];

  final floor2 = [
    const Room(number: '201', status: RoomStatus.available),
    const Room(number: '202', status: RoomStatus.available),
    const Room(number: '203', status: RoomStatus.available),
    const Room(number: '204', status: RoomStatus.available),
    const Room(number: '205', status: RoomStatus.maintenance),
    const Room(number: '206', status: RoomStatus.blocked),
    const Room(number: '207', status: RoomStatus.available),
    const Room(number: '208', status: RoomStatus.blocked),
    const Room(number: '209', status: RoomStatus.blocked),
    const Room(number: '210', status: RoomStatus.available),
    const Room(number: '211', status: RoomStatus.available),
    const Room(number: '212', status: RoomStatus.available),
    const Room(number: '213', status: RoomStatus.available),
    const Room(number: '214', status: RoomStatus.available),
    const Room(number: '215', status: RoomStatus.available),
    const Room(number: '216', status: RoomStatus.available),
    const Room(number: '201', status: RoomStatus.available),
    const Room(number: '202', status: RoomStatus.available),
    const Room(number: '203', status: RoomStatus.available),
    const Room(number: '204', status: RoomStatus.available),
    const Room(number: '205', status: RoomStatus.dirty),
    const Room(number: '206', status: RoomStatus.blocked),
    const Room(number: '207', status: RoomStatus.available),
    const Room(number: '208', status: RoomStatus.available),
    const Room(number: '209', status: RoomStatus.available),
    const Room(number: '210', status: RoomStatus.available),
    const Room(number: '211', status: RoomStatus.available),
    const Room(number: '212', status: RoomStatus.available),
    const Room(number: '213', status: RoomStatus.occupied),
    const Room(number: '214', status: RoomStatus.available),
    const Room(number: '215', status: RoomStatus.available),
    const Room(number: '216', status: RoomStatus.dirty),
    const Room(number: '201', status: RoomStatus.available),
    const Room(number: '202', status: RoomStatus.available),
    const Room(number: '203', status: RoomStatus.available),
    const Room(number: '204', status: RoomStatus.available),
    const Room(number: '205', status: RoomStatus.available),
    const Room(number: '206', status: RoomStatus.blocked),
    const Room(number: '207', status: RoomStatus.blocked),
    const Room(number: '208', status: RoomStatus.blocked),
    const Room(number: '209', status: RoomStatus.blocked),
    const Room(number: '230', status: RoomStatus.available),
    const Room(number: '201', status: RoomStatus.available),
    const Room(number: '202', status: RoomStatus.available),
    const Room(number: '203', status: RoomStatus.occupied),
    const Room(number: '204', status: RoomStatus.available),
    const Room(number: '205', status: RoomStatus.available),
    const Room(number: '206', status: RoomStatus.dirty),
    const Room(number: '204', status: RoomStatus.available),
    const Room(number: '205', status: RoomStatus.available),
    const Room(number: '206', status: RoomStatus.dirty),
    const Room(number: '202', status: RoomStatus.available),
    const Room(number: '203', status: RoomStatus.occupied),
    const Room(number: '204', status: RoomStatus.available),
  ];

  final floor1Right = [
    const Room(number: '101', status: RoomStatus.available),
    const Room(number: '102', status: RoomStatus.available),
    const Room(number: '103', status: RoomStatus.available),
    const Room(number: '104', status: RoomStatus.available),
    const Room(number: '105', status: RoomStatus.available),
    const Room(number: '106', status: RoomStatus.available),
    const Room(number: '107', status: RoomStatus.available),
    const Room(number: '108', status: RoomStatus.available),
    const Room(number: '109', status: RoomStatus.available),
    const Room(number: '110', status: RoomStatus.available),
    const Room(number: '111', status: RoomStatus.available),
    const Room(number: '112', status: RoomStatus.available),
  ];

  final floor2Right = [
    const Room(number: '201', status: RoomStatus.available),
    const Room(number: '202', status: RoomStatus.available),
    const Room(number: '203', status: RoomStatus.available),
    const Room(number: '204', status: RoomStatus.available),
    const Room(number: '205', status: RoomStatus.maintenance),
    const Room(number: '206', status: RoomStatus.blocked),
    const Room(number: '207', status: RoomStatus.available),
    const Room(number: '208', status: RoomStatus.available),
    const Room(number: '209', status: RoomStatus.available),
    const Room(number: '210', status: RoomStatus.available),
    const Room(number: '211', status: RoomStatus.available),
    const Room(number: '212', status: RoomStatus.available),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Room Status - Interactive Floor View',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            '50 rooms across your property',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 18),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    _buildFloorSection(
                      context: context,
                      title: 'Floor 1',
                      rooms: floor1,
                    ),
                    const SizedBox(height: 18),
                    _buildFloorSection(
                      context: context,
                      title: 'Floor 2',
                      rooms: floor2,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 18),
              SizedBox(
                width: 430,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildFloorSection(
                            context: context,
                            title: 'Floor 1',
                            rooms: floor1Right,
                          ),
                          const SizedBox(height: 18),
                          _buildFloorSection(
                            context: context,
                            title: 'Floor 2',
                            rooms: floor2Right,
                          ),
                          const SizedBox(height: 15),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                _buildStatusLegend(
                                  'Available',
                                  Colors.green,
                                ),
                                _buildStatusLegend(
                                  'Occupied',
                                  Colors.blue,
                                ),
                                _buildStatusLegend(
                                  'Dirty',
                                  Colors.red,
                                ),
                                _buildStatusLegend(
                                  'Maintenance',
                                  Colors.yellow,
                                ),
                                _buildStatusLegend(
                                  'Blocked',
                                  Colors.grey,
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            'Clicking a room tile its quick-edit menu',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: _buildGraph(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFloorSection({
    required BuildContext context,
    required String title,
    required List<Room> rooms,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 5,
          runSpacing: 5,
          children: rooms.map((room) {
            return InkWell(
              onTap: () {
                _showQuickEditMenu(context, room);
              },
              borderRadius: BorderRadius.circular(6),
              child: Container(
                width: 40,
                height: 32,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: room.statusColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  room.number,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildGraph() {
    return Column(
      children: [
        SizedBox(
          width: 110,
          height: 110,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: CircularProgressIndicator(
                  value: 0.04,
                  strokeWidth: 14,
                  backgroundColor: const Color(0xFFB9E0C5),
                  valueColor:
                      const AlwaysStoppedAnimation<Color>(
                    Color(0xFF18804B),
                  ),
                ),
              ),
              const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '200',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'Rooms \nTotal',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          '4% Occupied',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildStatusLegend(String title, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          const SizedBox(width: 7),
          Text(
            title,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  void _showQuickEditMenu(
    BuildContext context,
    Room room,
  ) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(
            'Quick Edit - Room ${room.number}',
          ),
          content: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _quickEditItem(
                dialogContext,
                'Available',
                Colors.green,
              ),
              _quickEditItem(
                dialogContext,
                'Occupied',
                Colors.blue,
              ),
              _quickEditItem(
                dialogContext,
                'Dirty',
                Colors.red,
              ),
              _quickEditItem(
                dialogContext,
                'Maintenance',
                Colors.yellow.shade700,
              ),
              _quickEditItem(
                dialogContext,
                'Blocked',
                Colors.grey,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _quickEditItem(
    BuildContext context,
    String title,
    Color color,
  ) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          children: [
            Container(
              width: 14,
              height: 14,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}