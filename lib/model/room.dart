import 'package:flutter/material.dart';

enum RoomStatus {
  available,
  occupied,
  dirty,
  maintenance,
  blocked,
}

class Room {
  final String number;
  final RoomStatus status;

  const Room({
    required this.number,
    required this.status,
  });

  Color get statusColor {
    switch (status) {
      case RoomStatus.available:
        return const Color(0xFFB9E0C5);

      case RoomStatus.occupied:
        return const Color(0xFF7FA5E8);

      case RoomStatus.dirty:
        return const Color(0xFFE66A6A);

      case RoomStatus.maintenance:
        return const Color(0xFFF2A33A);

      case RoomStatus.blocked:
        return const Color(0xFFBFC3C7);
    }
  }

  String get statusName {
    switch (status) {
      case RoomStatus.available:
        return 'Available';

      case RoomStatus.occupied:
        return 'Occupied';

      case RoomStatus.dirty:
        return 'Dirty';

      case RoomStatus.maintenance:
        return 'Maintenance';

      case RoomStatus.blocked:
        return 'Blocked';
    }
  }
}