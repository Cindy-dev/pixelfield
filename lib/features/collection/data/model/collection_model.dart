class CollectionModel {
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

class Bottle {
  int? id;
  String? collection;
  String? status;
  String? name;
  String? age;
  String? image;
  String? bottleNumber;
  Details? details;
  TastingNotes? tastingNotes;
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

class Details {
  String? distillery;
  String? region;
  String? country;
  String? type;
  String? ageStatement;
  String? filled;
  String? bottled;
  String? caskNumber;
  String? abv;
  String? size;
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

class LabelDetail {
  String? title;
  List<String>? description;
  List<String>? attachments;

  LabelDetail({
    this.title,
    this.description,
    this.attachments,
  });

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

class TastingNotes {
  String? by;
  List<String>? nose;
  List<String>? palate;
  List<String>? finish;

  TastingNotes({
    this.by,
    this.nose,
    this.palate,
    this.finish,
  });

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
