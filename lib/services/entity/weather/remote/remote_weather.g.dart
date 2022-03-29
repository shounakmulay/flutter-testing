// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteWeather _$RemoteWeatherFromJson(Map<String, dynamic> json) =>
    RemoteWeather(
      json['title'] as String,
      (json['consolidated_weather'] as List<dynamic>)
          .map((e) =>
              RemoteConsolidatedWeather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RemoteWeatherToJson(RemoteWeather instance) =>
    <String, dynamic>{
      'title': instance.title,
      'consolidated_weather': instance.consolidatedWeather,
    };
