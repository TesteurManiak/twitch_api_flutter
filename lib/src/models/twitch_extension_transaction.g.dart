// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_extension_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CostImpl _$$CostImplFromJson(Map<String, dynamic> json) => _$CostImpl(
      amount: (json['amount'] as num).toInt(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$CostImplToJson(_$CostImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'type': instance.type,
    };

_$ProductDataImpl _$$ProductDataImplFromJson(Map<String, dynamic> json) =>
    _$ProductDataImpl(
      sku: json['sku'] as String,
      cost: Cost.fromJson(json['cost'] as Map<String, dynamic>),
      displayName: json['displayName'] as String,
      inDevelopment: json['inDevelopment'] as bool,
    );

Map<String, dynamic> _$$ProductDataImplToJson(_$ProductDataImpl instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'cost': instance.cost,
      'displayName': instance.displayName,
      'inDevelopment': instance.inDevelopment,
    };

_$TwitchExtensionTransactionImpl _$$TwitchExtensionTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$TwitchExtensionTransactionImpl(
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

Map<String, dynamic> _$$TwitchExtensionTransactionImplToJson(
        _$TwitchExtensionTransactionImpl instance) =>
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
