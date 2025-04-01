import 'package:hive_flutter/adapters.dart';
part 'collection_model.g.dart';

@HiveType(typeId: 0)
class CollectionModel {
  @HiveField(0)
  List<Bottle>? bottles;

  CollectionModel({
    this.bottles,
  });

  factory CollectionModel.fromJson(Map<String, dynamic> json) =>
      CollectionModel(
        bottles: json["bottles"] == null
            ? []
            : List<Bottle>.from(
                json["bottles"]!.map((x) => Bottle.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "bottles": bottles == null
            ? []
            : List<dynamic>.from(bottles!.map((x) => x.toJson())),
      };
}

@HiveType(typeId: 1)
class Bottle {
  @HiveField(0)
  int? id;

  @HiveField(1)
  String? collection;

  @HiveField(2)
  String? status;

  @HiveField(3)
  String? name;

  @HiveField(4)
  String? age;

  @HiveField(5)
  String? image;

  @HiveField(6)
  String? bottleNumber;

  @HiveField(7)
  Details? details;

  @HiveField(8)
  TastingNotes? tastingNotes;

  @HiveField(9)
  List<LabelDetail>? labelDetails;

  Bottle({
    this.id,
    this.collection,
    this.status,
    this.name,
    this.age,
    this.image,
    this.bottleNumber,
    this.details,
    this.tastingNotes,
    this.labelDetails,
  });
  factory Bottle.fromJson(Map<String, dynamic> json) => Bottle(
        id: json["id"],
        collection: json["collection"],
        status: json["status"],
        name: json["name"],
        age: json["age"],
        image: json["image"],
        bottleNumber: json["bottle_number"],
        details:
            json["details"] == null ? null : Details.fromJson(json["details"]),
        tastingNotes: json["tasting_notes"] == null
            ? null
            : TastingNotes.fromJson(json["tasting_notes"]),
        labelDetails: json["label_details"] == null
            ? []
            : List<LabelDetail>.from(
                json["label_details"]!.map((x) => LabelDetail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "collection": collection,
        "status": status,
        "name": name,
        "age": age,
        "image": image,
        "bottle_number": bottleNumber,
        "details": details?.toJson(),
        "tasting_notes": tastingNotes?.toJson(),
        "label_details": labelDetails == null
            ? []
            : List<dynamic>.from(labelDetails!.map((x) => x.toJson())),
      };
}

@HiveType(typeId: 2)
class Details {
  @HiveField(0)
  String? distillery;

  @HiveField(1)
  String? region;

  @HiveField(2)
  String? country;

  @HiveField(3)
  String? type;

  @HiveField(4)
  String? ageStatement;

  @HiveField(5)
  String? filled;

  @HiveField(6)
  String? bottled;

  @HiveField(7)
  String? caskNumber;

  @HiveField(8)
  String? abv;

  @HiveField(9)
  String? size;

  @HiveField(10)
  String? finish;

  Details({
    this.distillery,
    this.region,
    this.country,
    this.type,
    this.ageStatement,
    this.filled,
    this.bottled,
    this.caskNumber,
    this.abv,
    this.size,
    this.finish,
  });
  factory Details.fromJson(Map<String, dynamic> json) => Details(
        distillery: json["distillery"],
        region: json["region"],
        country: json["country"],
        type: json["type"],
        ageStatement: json["age_statement"],
        filled: json["filled"],
        bottled: json["bottled"],
        caskNumber: json["cask_number"],
        abv: json["ABV"],
        size: json["size"],
        finish: json["finish"],
      );

  Map<String, dynamic> toJson() => {
        "distillery": distillery,
        "region": region,
        "country": country,
        "type": type,
        "age_statement": ageStatement,
        "filled": filled,
        "bottled": bottled,
        "cask_number": caskNumber,
        "ABV": abv,
        "size": size,
        "finish": finish,
      };
}

@HiveType(typeId: 3)
class LabelDetail {
  @HiveField(0)
  String? title;

  @HiveField(1)
  List<String>? description;

  @HiveField(2)
  List<String>? attachments;

  LabelDetail({this.title, this.description, this.attachments});

  factory LabelDetail.fromJson(Map<String, dynamic> json) => LabelDetail(
        title: json["title"],
        description: json["description"] == null
            ? []
            : List<String>.from(json["description"].map((x) => x.toString())),
        attachments: json["attachments"] == null
            ? []
            : List<String>.from(json["attachments"].map((x) => x.toString())),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description == null
            ? []
            : List<dynamic>.from(description!.map((x) => x.toString())),
        "attachments": attachments == null
            ? []
            : List<dynamic>.from(attachments!.map((x) => x.toString())),
      };
}

@HiveType(typeId: 4)
class TastingNotes {
  @HiveField(0)
  String? by;

  @HiveField(1)
  List<String>? nose;

  @HiveField(2)
  List<String>? palate;

  @HiveField(3)
  List<String>? finish;

  TastingNotes({this.by, this.nose, this.palate, this.finish});

  factory TastingNotes.fromJson(Map<String, dynamic> json) => TastingNotes(
        by: json["by"],
        nose: json["nose"] == null
            ? []
            : List<String>.from(json["nose"]!.map((x) => x.toString())),
        palate: json["palate"] == null
            ? []
            : List<String>.from(json["palate"]!.map((x) => x.toString())),
        finish: json["finish"] == null
            ? []
            : List<String>.from(json["finish"]!.map((x) => x.toString())),
      );

  Map<String, dynamic> toJson() => {
        "by": by,
        "nose": nose == null
            ? []
            : List<dynamic>.from(nose!.map((x) => x.toString())),
        "palate": palate == null
            ? []
            : List<dynamic>.from(palate!.map((x) => x.toString())),
        "finish": finish == null
            ? []
            : List<dynamic>.from(finish!.map((x) => x.toString())),
      };
}
