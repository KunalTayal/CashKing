import 'dart:convert';

List<TaskDetails> taskDetailsFromJson(String str) => List<TaskDetails>.from(
    json.decode(str).map((x) => TaskDetails.fromJson(x)));

String taskDetailsToJson(List<TaskDetails> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TaskDetails {
  TaskDetails({
    required this.eventId,
    required this.title,
    required this.description,
    required this.payout,
    required this.isCompleted,
    required this.payoutAmt,
    required this.payoutCurrency,
  });

  String eventId;
  String title;
  String description;
  String payout;
  bool isCompleted;
  int payoutAmt;
  String payoutCurrency;

  factory TaskDetails.fromJson(Map<String, dynamic> json) => TaskDetails(
        eventId: json["eventId"],
        title: json["title"],
        description: json["description"],
        payout: json["payout"],
        isCompleted: json["isCompleted"],
        payoutAmt: json["payout_amt"],
        payoutCurrency: json["payout_currency"],
      );

  Map<String, dynamic> toJson() => {
        "eventId": eventId,
        "title": title,
        "description": description,
        "payout": payout,
        "isCompleted": isCompleted,
        "payout_amt": payoutAmt,
        "payout_currency": payoutCurrency,
      };
}
