import 'package:realm/realm.dart';
part 'fav.g.dart';

@RealmModel()
class _Fav {
  @PrimaryKey()
  late final String title;
  late final String articleId;
}
