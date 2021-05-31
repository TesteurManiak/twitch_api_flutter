import '../extensions/string_extensions.dart';

enum TwitchExtensionTransactionProductType { bitsInExtension }

class _Cost {
  /// Number of Bits required to acquire the product.
  final int amount;

  /// Always the string “Bits”.
  final String type;

  _Cost({required this.amount, required this.type});

  factory _Cost.fromJson(Map<String, dynamic> json) => _Cost(
        amount: json['amount'] as int,
        type: json['type'] as String,
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

  _ProductData({
    required this.sku,
    required this.cost,
    required this.displayName,
    required this.inDevelopment,
  });

  factory _ProductData.fromJson(Map<String, dynamic> json) => _ProductData(
        sku: json['sku'] as String,
        cost: _Cost.fromJson(json['cost'] as Map<String, dynamic>),
        displayName: json['displayName'] as String,
        inDevelopment: json['inDevelopment'] as bool,
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
  final String? domain;

  /// Flag that denotes whether or not the data was sent over the extension
  /// pubsub to all instances of the extension.
  final bool? broadcast;

  /// Always empty since only unexpired products can be purchased.
  final String? expiration;

  TwitchExtensionTransaction({
    required this.id,
    required this.timestamp,
    required this.broadcasterId,
    required this.broadcasterLogin,
    required this.broadcasterName,
    required this.userId,
    required this.userLogin,
    required this.userName,
    required this.productType,
    required this.productData,
    this.domain,
    this.broadcast,
    this.expiration,
  });

  factory TwitchExtensionTransaction.fromJson(Map<String, dynamic> json) =>
      TwitchExtensionTransaction(
        id: json['id'] as String,
        timestamp: DateTime.parse(json['timestamp'] as String),
        broadcasterId: json['broadcaster_id'] as String,
        broadcasterLogin: json['broadcaster_login'] as String,
        broadcasterName: json['broadcaster_name'] as String,
        userId: json['user_id'] as String,
        userLogin: json['user_login'] as String,
        userName: json['user_name'] as String,
        productType:
            (json['product_type'] as String).toTransactionProductType(),
        productData:
            _ProductData.fromJson(json['product_data'] as Map<String, dynamic>),
        domain: json['domain'] as String?,
        broadcast: json['broadcast'] as bool?,
        expiration: json['expiration'] as String?,
      );
}
