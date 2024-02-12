import '../../../core/app_export.dart';

/// This class is used in the [topdoctor_item_widget] screen.
class TopdoctorItemModel {
  TopdoctorItemModel({
    this.drMarcusHorizon,
    this.chardiologist,
    this.fortySeven,
    this.distance,
    this.id,
  }) {
    drMarcusHorizon = drMarcusHorizon ?? "Dr. Marcus Horizon D";
    chardiologist = chardiologist ?? "Chardiologist";
    fortySeven = fortySeven ?? "4.7";
    distance = distance ?? "800m away";
    id = id ?? "";
  }

  String? drMarcusHorizon;

  String? chardiologist;

  String? fortySeven;

  String? distance;

  String? id;
}
