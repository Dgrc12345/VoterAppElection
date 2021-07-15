// To parse this JSON data, do
//
//     final incidentType = incidentTypeFromJson(jsonString);

import 'dart:convert';

List<IncidentType> incidentTypeFromJson(String str) => List<IncidentType>.from(json.decode(str).map((x) => IncidentType.fromJson(x)));

String incidentTypeToJson(List<IncidentType> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class IncidentType {


  int incidenceTypeId;
  String incidenceTypeEn;
  String incidenceTypeHi;
  String status;

  IncidentType(
    this.incidenceTypeId,
    this.incidenceTypeEn,
    this.incidenceTypeHi,
    this.status,
  );

  factory IncidentType.fromJson(Map<String, dynamic> json) => IncidentType(
     json["incidence_type_id"] as int,
     json["incidence_type_en"] as String,
     json["incidence_type_hi"] as String,
     json["status"] as String,
  );

  Map<String, dynamic> toJson() => {
    "incidence_type_id": incidenceTypeId,
    "incidence_type_en": incidenceTypeEn,
    "incidence_type_hi": incidenceTypeHi,
    "status": status,
  };
}
