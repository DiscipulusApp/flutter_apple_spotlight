import 'package:flutter/services.dart';
import 'package:flutter_apple_spotlight/flutter_apple_spotlight_attribute.dart';

export 'package:flutter_apple_spotlight/flutter_apple_spotlight_attribute.dart';
export 'package:flutter_apple_spotlight/flutter_apple_spotlight_uttype.dart';

/// Class for indexing items into Spotlight (macOS & iOS)
class CoreSpotlight {
  CoreSpotlight._();

  static final CoreSpotlight instance = CoreSpotlight._();

  static const MethodChannel _channel =
      MethodChannel('flutter_apple_spotlight');

  void Function(CoreSpotlightSelectedItem item)? _itemCallback;

  /// Set the callback for when an entry was selected.
  void init(
      {required void Function(CoreSpotlightSelectedItem item) callback}) async {
    _itemCallback = callback;
    _channel.setMethodCallHandler(_callBack);
  }

  Future<void> _callBack(MethodCall call) async {
    if (call.method == "onSearchableItemSelected") {
      // Item was selected
      _itemCallback?.call(CoreSpotlightSelectedItem.fromMap(
          call.arguments.cast<String, dynamic>()));
    }
  }

  /// Deletes all searchable items from the index, or only remove ones with a
  /// specific domain / identifier.
  Future<void> deleteAll({
    bool identifierIsDomain = false,
    Iterable<String>? identifier,
  }) async {
    await _channel.invokeMethod("delete_searchable_items", {
      "identifierIsDomain": identifierIsDomain,
      "identifier": identifier,
    });
  }

  Future<void> indexSearchableItems(Iterable<CoreSpotlightItem> items) async {
    return await _channel.invokeMethod(
        'index_searchable_items', items.map((e) => e.toMap()).toList());
  }
}

/// An item that can be indexed and made available to users when they search on their devices.
class CoreSpotlightItem {
  /// The unique identifier for the item. If you specify NULL, an identifier is generated automatically.
  final String? uniqueIdentifier;

  /// An identifier for a domain, such as an album, that helps you group items together in a way that makes sense.
  final String? domainIdentifier;

  /// A set of properties that specify the metadata you want to display about an item in a search result.
  final CoreSpotlightItemAttributeSet attributeSet;

  /// The date after which the searchable item should no longer exist.
  final DateTime? expirationDate;

  /// A Boolean value that indicates whether to treat the item as an update instead of a new item.
  ///
  /// Set the value of this property to true if the item represents an update to
  /// information already in the index. Marking an item as an update makes the
  /// indexing process more efficient. If this property is false and the system
  /// encounters an item with the same identifier in the index, it deletes the
  /// old item and then inserts the new one. When the property is true, it
  /// updates the existing item, which saves time. If this property is true and
  /// the item doesn’t exist in the index, the system creates a new item.
  final bool isUpdate;

  CoreSpotlightItem({
    this.uniqueIdentifier,
    this.domainIdentifier,
    required this.attributeSet,
    this.expirationDate,
    this.isUpdate = false,
  });

  Map<String, dynamic> toMap() {
    return {
      "uniqueIdentifier": uniqueIdentifier,
      "domainIdentifier": domainIdentifier,
      "attributeSet": attributeSet.toMap()
    };
  }
}

class CoreSpotlightSelectedItem {
  String key;
  String uniqueIdentifier;
  String query;

  CoreSpotlightSelectedItem({
    required this.key,
    required this.uniqueIdentifier,
    required this.query,
  });

  factory CoreSpotlightSelectedItem.fromMap(Map<String, dynamic> json) =>
      CoreSpotlightSelectedItem(
        key: json["key"],
        uniqueIdentifier: json["uniqueIdentifier"],
        query: json["query"],
      );
}
