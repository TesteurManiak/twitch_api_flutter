import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_extension_transaction.freezed.dart';
part 'twitch_extension_transaction.g.dart';

enum TwitchExtensionTransactionProductType {
  @JsonValue('BITS_IN_EXTENSION')
  bitsInExtension,
}

@freezed
class Cost with _$Cost {
  const factory Cost({
    /// Number of Bits required to acquire the product.
    required int amount,

    /// Always the string “Bits”.
    required String type,
  }) = _Cost;

  factory Cost.fromJson(Map<String, dynamic> json) => _$CostFromJson(json);
}

@freezed
class ProductData with _$ProductData {
  const factory ProductData({
    /// Unique identifier for the product across the extension.
    required String sku,

    /// Object representing the cost to acquire the product.
    required Cost cost,

    /// Display Name of the product.
    required String displayName,

    /// Flag used to indicate if the product is in development.
    required bool inDevelopment,
  }) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);
}

@freezed
class TwitchExtensionTransaction with _$TwitchExtensionTransaction {
  const factory TwitchExtensionTransaction({
    /// Unique identifier of the Bits in Extensions Transaction.
    required String id,

    /// UTC timestamp when this transaction occurred.
    required DateTime timestamp,

    /// Twitch User ID of the channel the transaction occurred on.
    @JsonKey(name: 'broadcaster_id') required String broadcasterId,

    /// Login name of the broadcaster.
    @JsonKey(name: 'broadcaster_login') required String broadcasterLogin,

    /// Twitch Display Name of the broadcaster.
    @JsonKey(name: 'broadcaster_name') required String broadcasterName,

    /// Twitch User ID of the user who generated the transaction.
    @JsonKey(name: 'user_id') required String userId,

    /// Login name of the user who generated the transaction.
    @JsonKey(name: 'user_login') required String userLogin,

    /// Twitch Display Name of the user who generated the transaction.
    @JsonKey(name: 'user_name') required String userName,

    /// Enum of the product type. Currently only
    /// `TwitchExtensionTransactionProductType.bitsInExtension`.
    @JsonKey(name: 'product_type')
        required TwitchExtensionTransactionProductType productType,

    /// Object representing the product acquired, as it looked at the time of the
    /// transaction.
    @JsonKey(name: 'product_data') required ProductData productData,

    /// Set this field to twitch.ext + your extension ID.
    String? domain,

    /// Flag that denotes whether or not the data was sent over the extension
    /// pubsub to all instances of the extension.
    bool? broadcast,

    /// Always empty since only unexpired products can be purchased.
    String? expiration,
  }) = _TwitchExtensionTransaction;

  factory TwitchExtensionTransaction.fromJson(Map<String, dynamic> json) =>
      _$TwitchExtensionTransactionFromJson(json);
}
