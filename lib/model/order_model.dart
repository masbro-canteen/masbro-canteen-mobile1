import 'package:flutter/material.dart';
import 'package:testgetdata/model/snap_model.dart';

class OrderModel {
  final String status;
  final String messages;
  Snap? snap;

  OrderModel({
    required this.status,
    required this.messages,
    this.snap,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        status: json["status"],
        messages: json["messages"],
        snap: json["snap"] != null ? Snap.fromJson(json["snap"]) : null,
      );
}
