// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_extension_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cost _$$_CostFromJson(Map<String, dynamic> json) => _$_Cost(
      amount: json['amount'] as int,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_CostToJson(_$_Cost instance) => <String, dynamic>{
      'amount': instance.amount,
      'type': instance.type,
    };

_$_ProductData _$$_ProductDataFromJson(Map<String, dynamic> json) =>
    _$_ProductData(
      sku: json['sku'] as String,
      cost: Cost.fromJson(json['cost'] as Map<String, dynamic>),
      displayName: json['displayName'] as String,
      inDevelopment: json['inDevelopment'] as bool,
    );

Map<String, dynamic> _$$_ProductDataToJson(_$_ProductData instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'cost': instance.cost,
      'displayName': instance.displayName,
      'inDevelopment': instance.inDevelopment,
    };

_$_TwitchExtensionTransaction _$$_TwitchExtensionTransactionFromJson(
        Map<String, dynamic> json) =>
    _$_TwitchExtensionTransaction(
      id: json['id'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      broadcasterId: json['broadcaster_id'] as String,
      broadcasterLogin: json['broadcaster_login'] as String,
      broadcasterName: json['broadcaster_name'] as String,
      userId: json['user_id'] as String,
      userLogin: json['user_login'] as String,
      userName: json['user_name'] as String,
      productType: $enumDecode(
          _$TwitchExtensionTransactionProductTypeEnumMap, json['product_type']),
      productData:
          ProductData.fromJson(json['product_data'] as Map<String, dynamic>),
      domain: json['domain'] as String?,
      broadcast: json['broadcast'] as bool?,
      expiration: json['expiration'] as String?,
    );

Map<String, dynamic> _$$_TwitchExtensionTransactionToJson(
        _$_TwitchExtensionTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'broadcaster_id': instance.broadcasterId,
      'broadcaster_login': instance.broadcasterLogin,
      'broadcaster_name': instance.broadcasterName,
      'user_id': instance.userId,
      'user_login': instance.userLogin,
      'user_name': instance.userName,
      'product_type':
          _$TwitchExtensionTransactionProductTypeEnumMap[instance.productType]!,
      'product_data': instance.productData,
      'domain': instance.domain,
      'broadcast': instance.broadcast,
      'expiration': instance.expiration,
    };

const _$TwitchExtensionTransactionProductTypeEnumMap = {
  TwitchExtensionTransactionProductType.bitsInExtension: 'BITS_IN_EXTENSION',
};
