// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UserEntityStruct extends FFFirebaseStruct {
  UserEntityStruct({
    String? email,
    String? firstName,
    String? lastName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _email = email,
        _firstName = firstName,
        _lastName = lastName,
        super(firestoreUtilData);

  // "email" field.
  String? _email;
  String get email => _email ?? 'email';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? 'firstname';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? 'lastname';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  static UserEntityStruct fromMap(Map<String, dynamic> data) =>
      UserEntityStruct(
        email: data['email'] as String?,
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
      );

  static UserEntityStruct? maybeFromMap(dynamic data) => data is Map
      ? UserEntityStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
        'first_name': _firstName,
        'last_name': _lastName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'first_name': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserEntityStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserEntityStruct(
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['first_name'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserEntityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserEntityStruct &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName;
  }

  @override
  int get hashCode => const ListEquality().hash([email, firstName, lastName]);
}

UserEntityStruct createUserEntityStruct({
  String? email,
  String? firstName,
  String? lastName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserEntityStruct(
      email: email,
      firstName: firstName,
      lastName: lastName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserEntityStruct? updateUserEntityStruct(
  UserEntityStruct? userEntity, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userEntity
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserEntityStructData(
  Map<String, dynamic> firestoreData,
  UserEntityStruct? userEntity,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userEntity == null) {
    return;
  }
  if (userEntity.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userEntity.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userEntityData = getUserEntityFirestoreData(userEntity, forFieldValue);
  final nestedData = userEntityData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userEntity.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserEntityFirestoreData(
  UserEntityStruct? userEntity, [
  bool forFieldValue = false,
]) {
  if (userEntity == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userEntity.toMap());

  // Add any Firestore field values
  userEntity.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserEntityListFirestoreData(
  List<UserEntityStruct>? userEntitys,
) =>
    userEntitys?.map((e) => getUserEntityFirestoreData(e, true)).toList() ?? [];
