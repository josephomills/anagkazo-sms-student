enum ScanType { scanIn, scanOut }

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

extension StringExt on String {
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
