import '../extensions/string_extensions.dart';

enum TwitchExtensionTransactionProductType { bitsInExtension }

class _Cost {
  /// Number of Bits required to acquire the product.
  final int amount;

  /// Always the string “Bits”.
  final String type;

  _Cost({this.amount, this.type});

  factory _Cost.fromJson(Map<String, dynamic> json) => _Cost(
        amount: json['amount'],
        type: json['type'],
      );
}

class _ProductData {
  /// Unique identifier for the product across the extension.
  final String sku;

  /// Object representing the cost to acquire the product.
  final _Cost cost;

  /// Display Name of the product.
  final String displayName;

  /// Flag used to indicate if the product is in development.
  final bool inDevelopment;

  _ProductData({this.sku, this.cost, this.displayName, this.inDevelopment});

  factory _ProductData.fromJson(Map<String, dynamic> json) => _ProductData(
        sku: json['sku'],
        cost: _Cost.fromJson(json['cost']),
        displayName: json['displayName'],
        inDevelopment: json['inDevelopment'],
      );
}

class TwitchExtensionTransaction {
  /// Unique identifier of the Bits in Extensions Transaction.
  final String id;

  /// UTC timestamp when this transaction occurred.
  final DateTime timestamp;

  /// Twitch User ID of the channel the transaction occurred on.
  final String broadcasterId;

  /// Login name of the broadcaster.
  final String broadcasterLogin;

  /// Twitch Display Name of the broadcaster.
  final String broadcasterName;

  /// Twitch User ID of the user who generated the transaction.
  final String userId;

  /// Login name of the user who generated the transaction.
  final String userLogin;

  /// Twitch Display Name of the user who generated the transaction.
  final String userName;

  /// Enum of the product type. Currently only
  /// `TwitchExtensionTransactionProductType.bitsInExtension`.
  final TwitchExtensionTransactionProductType productType;

  /// Object representing the product acquired, as it looked at the time of the
  /// transaction.
  final _ProductData productData;

  /// Set this field to twitch.ext + your extension ID.
  final String domain;

  /// Flag that denotes whether or not the data was sent over the extension
  /// pubsub to all instances of the extension.
  final bool broadcast;

  /// Always empty since only unexpired products can be purchased.
  final String expiration;

  TwitchExtensionTransaction({
    this.id,
    this.timestamp,
    this.broadcasterId,
    this.broadcasterLogin,
    this.broadcasterName,
    this.userId,
    this.userLogin,
    this.userName,
    this.productType,
    this.productData,
    this.domain,
    this.broadcast,
    this.expiration,
  });

  factory TwitchExtensionTransaction.fromJson(Map<String, dynamic> json) =>
      TwitchExtensionTransaction(
        id: json['id'],
        timestamp: DateTime.parse(json['timestamp']),
        broadcasterId: json['broadcaster_id'],
        broadcasterLogin: json['broadcaster_login'],
        broadcasterName: json['broadcaster_name'],
        userId: json['user_id'],
        userLogin: json['user_login'],
        userName: json['user_name'],
        productType:
            (json['product_type'] as String).toTransactionProductType(),
        productData: _ProductData.fromJson(json['product_data']),
        domain: json['domain'],
        broadcast: json['broadcast'],
        expiration: json['expiration'],
      );
}
