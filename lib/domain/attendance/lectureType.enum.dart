enum LectureType {
  vision,
  pillar,
  anagkazoLive,
  firstLoveExperience,
  other,
  foundational,
  tutorial,
  none,
}

extension LectureTypeExt on LectureType {
  String get value {
    switch (this) {
      case LectureType.pillar:
        return "Pillar";
      case LectureType.foundational:
        return "Foundational";
      case LectureType.tutorial:
        return "Tutorial";
      case LectureType.vision:
        return "Vision";
      case LectureType.anagkazoLive:
        return "Anagkazo Live";
      case LectureType.firstLoveExperience:
        return "First Love Experience";
      case LectureType.other:
        return "Other";
      case LectureType.none:
        return "Other";
      default:
        return "";
    }
  }

  String get shortname {
    switch (this) {
      case LectureType.pillar:
        return "PILLAR";
      case LectureType.foundational:
        return "FOUNDATIONAL";
      case LectureType.tutorial:
        return "TUTORIAL";
      case LectureType.vision:
        return "VISION";
      case LectureType.anagkazoLive:
        return "A_LIVE";
      case LectureType.firstLoveExperience:
        return "FL_EXP";
      case LectureType.other:
        return "OTHER";
      case LectureType.none:
        return "OTHER";
      default:
        return "";
    }
  }
}

extension StringExt on String {
  LectureType get lectureType {
    switch (this) {
      case "Pillar":
        return LectureType.pillar;
      case "Foundational":
        return LectureType.foundational;
      case "Tutorial":
        return LectureType.tutorial;
      case "Vision":
        return LectureType.vision;
      case "Anagkazo Live":
        return LectureType.anagkazoLive;
      case "First Love Experience":
        return LectureType.firstLoveExperience;
      case "Other":
        return LectureType.other;
      default:
        return LectureType.pillar;
    }
  }
}
