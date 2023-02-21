import 'package:student/domain/core/enums/types.enum.dart';

extension EventTypeExt on EventType {
  String get name {
    switch (this) {
      case EventType.pillar:
        return "Pillar";
      case EventType.foundational:
        return "Foundational";
      case EventType.tutorial:
        return "Tutorial";
      case EventType.vision:
        return "Vision";
      case EventType.live:
        return "Live";
      case EventType.experience:
        return "Experience";
      case EventType.encounter:
        return "Encounter";
      case EventType.assembly:
        return "Assembly";
      case EventType.other:
        return "Other";
      default:
        return "Other";
    }
  }
}

extension ScanTypeExt on ScanType {
  String get value {
    switch (this) {
      case ScanType.scanIn:
        return "IN";
      case ScanType.scanOut:
        return "OUT";
      default:
        return "";
    }
  }
}
