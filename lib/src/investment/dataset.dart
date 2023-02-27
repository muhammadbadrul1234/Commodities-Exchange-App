import 'package:flutter/material.dart';

class CardData {
  final String balance;
  final String date;
  final String number;
  final Color color;
  CardData(
      {required this.balance,
      required this.date,
      required this.number,
      required this.color});
}

List<CardData> cards = [
  CardData(
    balance: '23,532',
    date: '12/26',
    number: '5262',
    color: Colors.blue,
  ),
  CardData(
    balance: '48,632',
    date: '01/23',
    number: '5737',
    color: Colors.red,
  ),
  CardData(
    balance: '74,363',
    date: '07/24',
    number: '6315',
    color: Colors.green,
  ),
];

class LastInvestmentData {
  final int value;
  final String name;
  LastInvestmentData({required this.value, required this.name});
}

List<LastInvestmentData> lastInvestment = [
  LastInvestmentData(value: 33624, name: "Twitter, Inc. ao"),
  LastInvestmentData(value: 23864, name: "Tesla, Inc. ao"),
  LastInvestmentData(value: 20724, name: "Volkswagon, Inc.ao"),
];

class Recommended {
  final String name;
  final String subtitle;
  final String icon;
  final String value;
  Recommended(
      {required this.name,
      required this.subtitle,
      required this.icon,
      required this.value});
}

List<Recommended> recommendedList = [
  Recommended(
      name: "Netflix, Inc. ao",
      subtitle: "Blu-ray Disk, DVD",
      value: "+189%",
      icon: "assets/netflix.jpg"),
  Recommended(
      name: "Ozon, Inc. ao",
      subtitle: "Online store",
      value: "+173%",
      icon: "assets/ozon.jpg"),
  Recommended(
      name: "Tesla, Inc. ao",
      subtitle: "Automotive industry",
      value: "+189%",
      icon: "assets/tesla.jpg"),
];
