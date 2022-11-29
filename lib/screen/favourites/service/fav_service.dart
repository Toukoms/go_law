import 'package:flutter/foundation.dart';
import 'package:go_law/screen/favourites/model/fav.dart';
import 'package:realm/realm.dart';

class FavService {
  final Configuration _config =
      Configuration([Fav.schema], readOnly: false, inMemory: false);
  late Realm _realm;
  FavService() {
    openRealm();
  }
  openRealm() {
    _realm = Realm(_config);
  }

  closeRealm() {
    if (!_realm.isClosed) {
      _realm.close();
    }
  }

  RealmResults<Fav> getItems() {
    return _realm.all<Fav>();
  }

  bool addItem(String title, String articleId) {
    try {
      _realm.write(() {
        _realm.add<Fav>(Fav(title, articleId));
      });
      return true;
    } on RealmException catch (e) {
      debugPrint(e.message);
      return false;
    }
  }

  bool deleteItem(Fav fav) {
    try {
      _realm.write(() {
        _realm.delete(fav);
      });
      return true;
    } on RealmException catch (e) {
      debugPrint(e.message);
      return false;
    }
  }
}
