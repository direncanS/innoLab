import 'package:vienna_life_quality/features/home/domain/models/park_model.dart';
import 'package:vienna_life_quality/features/home/domain/models/subdistrict_model.dart';
import 'package:vienna_life_quality/features/home/domain/models/transit_stop.dart';

class QualityOfLifeResponse {
  final double qualityOfLifeScore;
  final double normalizedScore;
  final String recommendation;
  final Subdistrict subdistrict;
  final double educationLevel;
  final double airQuality;
  final int numberOfKindergartens;
  final int numberOfParks;
  final int numberOfTransitStops;
  final List<Park> parks;
  final List<TransitStop> transitStops;

  QualityOfLifeResponse({
    required this.qualityOfLifeScore,
    required this.normalizedScore,
    required this.recommendation,
    required this.subdistrict,
    required this.educationLevel,
    required this.airQuality,
    required this.numberOfKindergartens,
    required this.numberOfParks,
    required this.numberOfTransitStops,
    required this.parks,
    required this.transitStops,
  });

  factory QualityOfLifeResponse.fromJson(Map<String, dynamic> json) {
    return QualityOfLifeResponse(
      qualityOfLifeScore: json['quality_of_life_score'].toDouble(),
      normalizedScore: json['normalized_score'].toDouble(),
      recommendation: json['recommendation'],
      subdistrict: Subdistrict.fromJson(json['subdistrict']),
      educationLevel: json['education_level'].toDouble(),
      airQuality: json['air_quality'].toDouble(),
      numberOfKindergartens: json['number_of_kindergartens'],
      numberOfParks: json['number_of_parks'],
      numberOfTransitStops: json['number_of_transit_stops'],
      parks: (json['parks'] as List).map((e) => Park.fromJson(e)).toList(),
      transitStops: (json['transit_stops'] as List).map((e) => TransitStop.fromJson(e)).toList(),
    );
  }
}
