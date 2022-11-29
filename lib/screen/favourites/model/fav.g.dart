// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fav.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Fav extends _Fav with RealmEntity, RealmObject {
  Fav(
    String title,
    String articleId,
  ) {
    RealmObject.set(this, 'title', title);
    RealmObject.set(this, 'articleId', articleId);
  }

  Fav._();

  @override
  String get title => RealmObject.get<String>(this, 'title') as String;
  @override
  set title(String value) => throw RealmUnsupportedSetError();

  @override
  String get articleId => RealmObject.get<String>(this, 'articleId') as String;
  @override
  set articleId(String value) => throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Fav>> get changes =>
      RealmObject.getChanges<Fav>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(Fav._);
    return const SchemaObject(Fav, [
      SchemaProperty('title', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('articleId', RealmPropertyType.string),
    ]);
  }
}
