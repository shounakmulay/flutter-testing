// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_consolidated_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteConsolidatedWeather _$RemoteConsolidatedWeatherFromJson(
        Map<String, dynamic> json) =>
    RemoteConsolidatedWeather(
      (json['id'] as num).toDouble(),
      (json['min_temp'] as num).toDouble(),
      (json['max_temp'] as num).toDouble(),
      (json['the_temp'] as num).toDouble(),
      JsonDateTimeConverter.fromJson(json['applicable_date'] as String),
    );

Map<String, dynamic> _$RemoteConsolidatedWeatherToJson(
        RemoteConsolidatedWeather instance) =>
    <String, dynamic>{
      'id': instance.id,
      'min_temp': instance.minTemp,
      'max_temp': instance.maxTemp,
      'the_temp': instance.theTemp,
      'applicable_date': JsonDateTimeConverter.toJson(instance.date),
    };
