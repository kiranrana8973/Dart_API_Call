// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SingleStudentResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleStudentResponse _$SingleStudentResponseFromJson(
        Map<String, dynamic> json) =>
    SingleStudentResponse(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : Student.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SingleStudentResponseToJson(
        SingleStudentResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
