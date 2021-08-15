// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StudentResponses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentResponses _$StudentResponsesFromJson(Map<String, dynamic> json) =>
    StudentResponses(
      success: json['success'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Student.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StudentResponsesToJson(StudentResponses instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
