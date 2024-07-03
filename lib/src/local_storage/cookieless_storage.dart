import 'package:matomo_tracker/src/local_storage/local_storage.dart';

/// A [LocalStorage] implementation that does not store any specific user data.
///
/// It implements stub methods that return empty values for properties
/// first_visit and visitor_id.
///
/// Other methods are delegated to the [storage] parameter.
class CookielessStorage implements LocalStorage {
  CookielessStorage({required this.storage});

  final LocalStorage storage;

  @override
  Future<void> clear() => storage.clear();

  @override
  Future<bool> getOptOut() => storage.getOptOut();

  @override
  Future<String?> getVisitorId() => Future.value();

  @override
  Future<void> setOptOut({required bool optOut}) {
    return storage.setOptOut(optOut: optOut);
  }

  @override
  Future<void> setVisitorId(String _) => Future.value();

  @override
  Future<String?> loadActions() => storage.loadActions();

  @override
  Future<void> storeActions(String serializedActions) =>
      storage.storeActions(serializedActions);
}
