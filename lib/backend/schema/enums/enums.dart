import 'package:collection/collection.dart';

enum Gender {
  male,
  female,
  other,
}

enum AddressType {
  home,
  office,
}

enum Filter {
  category,
  brand,
  search,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Gender):
      return Gender.values.deserialize(value) as T?;
    case (AddressType):
      return AddressType.values.deserialize(value) as T?;
    case (Filter):
      return Filter.values.deserialize(value) as T?;
    default:
      return null;
  }
}
