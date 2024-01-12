import 'package:flutter/material.dart';

class DayAction {
  final String action;
  final TimeOfDay time;
  final int id;
  final int? next;
  final int? prev;

  const DayAction({
    required this.id,
    required this.action,
    required this.time,
    this.next,
    this.prev,
  });
}

final sample_day_actions = [
  DayAction(
    id: 0,
    action: 'action',
    time: TimeOfDay.now(),
    next: 1,
  ),
  DayAction(
    id: 1,
    action: 'action',
    time: TimeOfDay.now(),
    next: 2,
    prev: 0,
  ),
  DayAction(
    id: 2,
    action: 'action',
    time: TimeOfDay.now(),
    prev: 1,
  ),
];
