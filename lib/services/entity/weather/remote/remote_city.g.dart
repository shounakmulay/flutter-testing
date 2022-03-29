// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteCity _$RemoteCityFromJson(Map<String, dynamic> json) => RemoteCity(
      woeid: json['woeid'] as int,
      title: json['title'] as String,
      locationType: json['location_type'] as String,
      location: json['latt_long'] as String,
    );

Map<String, dynamic> _$RemoteCityToJson(RemoteCity instance) =>
    <String, dynamic>{
      'woeid': instance.woeid,
      'title': instance.title,
      'location_type': instance.locationType,
      'latt_long': instance.location,
    };
