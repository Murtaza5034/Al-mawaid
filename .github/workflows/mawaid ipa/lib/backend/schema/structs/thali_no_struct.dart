// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ThaliNoStruct extends FFFirebaseStruct {
  ThaliNoStruct({
    String? thaliNO,
    String? type,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _thaliNO = thaliNO,
        _type = type,
        super(firestoreUtilData);

  // "ThaliNO" field.
  String? _thaliNO;
  String get thaliNO => _thaliNO ?? '';
  set thaliNO(String? val) => _thaliNO = val;

  bool hasThaliNO() => _thaliNO != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  static ThaliNoStruct fromMap(Map<String, dynamic> data) => ThaliNoStruct(
        thaliNO: data['ThaliNO'] as String?,
        type: data['Type'] as String?,
      );

  static ThaliNoStruct? maybeFromMap(dynamic data) =>
      data is Map ? ThaliNoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ThaliNO': _thaliNO,
        'Type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ThaliNO': serializeParam(
          _thaliNO,
          ParamType.String,
        ),
        'Type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static ThaliNoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ThaliNoStruct(
        thaliNO: deserializeParam(
          data['ThaliNO'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['Type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ThaliNoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ThaliNoStruct &&
        thaliNO == other.thaliNO &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([thaliNO, type]);
}

ThaliNoStruct createThaliNoStruct({
  String? thaliNO,
  String? type,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ThaliNoStruct(
      thaliNO: thaliNO,
      type: type,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ThaliNoStruct? updateThaliNoStruct(
  ThaliNoStruct? thaliNo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    thaliNo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addThaliNoStructData(
  Map<String, dynamic> firestoreData,
  ThaliNoStruct? thaliNo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (thaliNo == null) {
    return;
  }
  if (thaliNo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && thaliNo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final thaliNoData = getThaliNoFirestoreData(thaliNo, forFieldValue);
  final nestedData = thaliNoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = thaliNo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getThaliNoFirestoreData(
  ThaliNoStruct? thaliNo, [
  bool forFieldValue = false,
]) {
  if (thaliNo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(thaliNo.toMap());

  // Add any Firestore field values
  thaliNo.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getThaliNoListFirestoreData(
  List<ThaliNoStruct>? thaliNos,
) =>
    thaliNos?.map((e) => getThaliNoFirestoreData(e, true)).toList() ?? [];
