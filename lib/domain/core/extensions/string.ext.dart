import 'package:student/domain/core/enums/types.enum.dart';

extension StringExt on String {
  EventType get eventType {
    switch (this) {
      case "Pillar":
        return EventType.pillar;
      case "Foundational":
        return EventType.foundational;
      case "Tutorial":
        return EventType.tutorial;
      case "Vision":
        return EventType.vision;
      case "Live":
        return EventType.live;
      case "Experience":
        return EventType.experience;
      case "Encounter":
        return EventType.encounter;
      case "Assembly":
        return EventType.assembly;
      case "Other":
        return EventType.other;
      default:
        return EventType.other;
    }
  }

  ScanType get scanType {
    switch (this) {
      case "IN":
        return ScanType.scanIn;
      case "OUT":
        return ScanType.scanOut;
      default:
        return ScanType.scanIn;
    }
  }
}
