// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CollectionModelAdapter extends TypeAdapter<CollectionModel> {
  @override
  final int typeId = 0;

  @override
  CollectionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CollectionModel(
      bottles: (fields[0] as List?)?.cast<Bottle>(),
    );
  }

  @override
  void write(BinaryWriter writer, CollectionModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.bottles);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CollectionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BottleAdapter extends TypeAdapter<Bottle> {
  @override
  final int typeId = 1;

  @override
  Bottle read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Bottle(
      id: fields[0] as int?,
      collection: fields[1] as String?,
      status: fields[2] as String?,
      name: fields[3] as String?,
      age: fields[4] as String?,
      image: fields[5] as String?,
      bottleNumber: fields[6] as String?,
      details: fields[7] as Details?,
      tastingNotes: fields[8] as TastingNotes?,
      labelDetails: (fields[9] as List?)?.cast<LabelDetail>(),
    );
  }

  @override
  void write(BinaryWriter writer, Bottle obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.collection)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.age)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.bottleNumber)
      ..writeByte(7)
      ..write(obj.details)
      ..writeByte(8)
      ..write(obj.tastingNotes)
      ..writeByte(9)
      ..write(obj.labelDetails);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BottleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DetailsAdapter extends TypeAdapter<Details> {
  @override
  final int typeId = 2;

  @override
  Details read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Details(
      distillery: fields[0] as String?,
      region: fields[1] as String?,
      country: fields[2] as String?,
      type: fields[3] as String?,
      ageStatement: fields[4] as String?,
      filled: fields[5] as String?,
      bottled: fields[6] as String?,
      caskNumber: fields[7] as String?,
      abv: fields[8] as String?,
      size: fields[9] as String?,
      finish: fields[10] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Details obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.distillery)
      ..writeByte(1)
      ..write(obj.region)
      ..writeByte(2)
      ..write(obj.country)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.ageStatement)
      ..writeByte(5)
      ..write(obj.filled)
      ..writeByte(6)
      ..write(obj.bottled)
      ..writeByte(7)
      ..write(obj.caskNumber)
      ..writeByte(8)
      ..write(obj.abv)
      ..writeByte(9)
      ..write(obj.size)
      ..writeByte(10)
      ..write(obj.finish);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LabelDetailAdapter extends TypeAdapter<LabelDetail> {
  @override
  final int typeId = 3;

  @override
  LabelDetail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LabelDetail(
      title: fields[0] as String?,
      description: (fields[1] as List?)?.cast<String>(),
      attachments: (fields[2] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, LabelDetail obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.attachments);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LabelDetailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TastingNotesAdapter extends TypeAdapter<TastingNotes> {
  @override
  final int typeId = 4;

  @override
  TastingNotes read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TastingNotes(
      by: fields[0] as String?,
      nose: (fields[1] as List?)?.cast<String>(),
      palate: (fields[2] as List?)?.cast<String>(),
      finish: (fields[3] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, TastingNotes obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.by)
      ..writeByte(1)
      ..write(obj.nose)
      ..writeByte(2)
      ..write(obj.palate)
      ..writeByte(3)
      ..write(obj.finish);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TastingNotesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
