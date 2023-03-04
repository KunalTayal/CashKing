import 'dart:convert';

List<TaskModel> taskModelFromJson(String str) => List<TaskModel>.from(json.decode(str).map((x) => TaskModel.fromJson(x)));

String taskModelToJson(List<TaskModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TaskModel {
    TaskModel({
        required this.taskId,
        required this.title,
        required this.thumbnail,
        required this.shortDesc,
        required this.payout,
        required this.ctaShort,
        required this.ctaLong,
        required this.type,
        required this.totalLead,
        required this.isTrending,
        required this.earned,
        required this.status,
        required this.isCompleted,
        required this.brand,
        required this.payoutAmt,
        required this.payoutCurrency,
        required this.ctaAction,
        required this.customData,
    });

    String taskId;
    String title;
    String thumbnail;
    String shortDesc;
    String payout;
    String ctaShort;
    String ctaLong;
    String type;
    String totalLead;
    bool isTrending;
    String earned;
    String status;
    String isCompleted;
    Brand brand;
    int payoutAmt;
    String payoutCurrency;
    String ctaAction;
    CustomData customData;

    factory TaskModel.fromJson(Map<String, dynamic> json) => TaskModel(
        taskId: json["taskId"],
        title: json["title"],
        thumbnail: json["thumbnail"],
        shortDesc: json["shortDesc"],
        payout: json["payout"],
        ctaShort: json["ctaShort"],
        ctaLong: json["ctaLong"],
        type: json["type"],
        totalLead: json["total_lead"],
        isTrending: json["isTrending"],
        earned: json["earned"],
        status: json["status"],
        isCompleted: json["isCompleted"],
        brand: Brand.fromJson(json["brand"]),
        payoutAmt: json["payout_amt"],
        payoutCurrency: json["payout_currency"],
        ctaAction: json["ctaAction"],
        customData: CustomData.fromJson(json["custom_data"]),
    );

    Map<String, dynamic> toJson() => {
        "taskId": taskId,
        "title": title,
        "thumbnail": thumbnail,
        "shortDesc": shortDesc,
        "payout": payout,
        "ctaShort": ctaShort,
        "ctaLong": ctaLong,
        "type": type,
        "total_lead": totalLead,
        "isTrending": isTrending,
        "earned": earned,
        "status": status,
        "isCompleted": isCompleted,
        "brand": brand.toJson(),
        "payout_amt": payoutAmt,
        "payout_currency": payoutCurrency,
        "ctaAction": ctaAction,
        "custom_data": customData.toJson(),
    };
}

class Brand {
    Brand({
        required this.brandId,
        required this.title,
        required this.logo,
    });

    String brandId;
    String title;
    String logo;

    factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        brandId: json["brandId"],
        title: json["title"],
        logo: json["logo"],
    );

    Map<String, dynamic> toJson() => {
        "brandId": brandId,
        "title": title,
        "logo": logo,
    };
}

class CustomData {
    CustomData({
        required this.appRating,
        required this.wallUrl,
        required this.dominantColor,
    });

    String appRating;
    String wallUrl;
    String dominantColor;

    factory CustomData.fromJson(Map<String, dynamic> json) => CustomData(
        appRating: json["app_rating"],
        wallUrl: json["wall_url"],
        dominantColor: json["dominant_color"],
    );

    Map<String, dynamic> toJson() => {
        "app_rating": appRating,
        "wall_url": wallUrl,
        "dominant_color": dominantColor,
    };
}