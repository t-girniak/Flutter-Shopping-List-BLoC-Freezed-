// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_item_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ShoppingItemHiveAdapter extends TypeAdapter<ShoppingItemHive> {
  @override
  final int typeId = 1;

  @override
  ShoppingItemHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ShoppingItemHive()
      ..title = fields[0] as String
      ..quantity = fields[1] as int
      ..color = fields[2] as int
      ..checked = fields[3] as bool;
  }

  @override
  void write(BinaryWriter writer, ShoppingItemHive obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.quantity)
      ..writeByte(2)
      ..write(obj.color)
      ..writeByte(3)
      ..write(obj.checked);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShoppingItemHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
