//1. terminal run : flutter pub add uuid
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.games,
  Category.work: Icons.work
};

//2. create model
class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();

  final String id;
  final String title;
  final double amount; // 1.88 ,10.99
  final DateTime date;
  final Category category;

// terminal run:  flutter pub add intl
  String get formattedDate {
    return formatter.format(date);
  }
}
