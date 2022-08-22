// To parse this JSON data, do
//
//     final apiModel = apiModelFromJson(jsonString);

import 'dart:convert';

ApiModel apiModelFromJson(String str) => ApiModel.fromJson(json.decode(str));

String apiModelToJson(ApiModel data) => json.encode(data.toJson());

class ApiModel {
    ApiModel({
        this.status,
        this.linkToPlaystore,
        this.filePath,
        this.fileName,
    });

    int ? status;
    String ? linkToPlaystore;
    String ? filePath;
    String ? fileName;
 
    factory ApiModel.fromJson(Map<String, dynamic> json) => ApiModel(
        status: json["Status"],
        linkToPlaystore: json["LinkToPlaystore"],
        filePath: json["FilePath"],
        fileName: json["FileName"],
    );

    Map<String, dynamic> toJson() => {
        "Status": status,
        "LinkToPlaystore": linkToPlaystore,
        "FilePath": filePath,
        "FileName": fileName,
    };
}
