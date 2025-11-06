enum DayOfWeek {
  sunday,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
}

// 第幾節課 (1-4,N,5-9,A-D)
enum Period {
  first('1'),
  second('2'),
  third('3'),
  fourth('4'),
  nPeriod('N'),
  fifth('5'),
  sixth('6'),
  seventh('7'),
  eighth('8'),
  ninth('9'),
  aPeriod('A'),
  bPeriod('B'),
  cPeriod('C'),
  dPeriod('D');

  final String code;
  const Period(this.code);
}

enum CourseType {
  required('必'),
  elective('選'),
  general('通');

  final String code;
  const CourseType(this.code);
}

class CourseSchedule {
  final String? id;
  final String? name;
  final double? credits;
  final int? hours;
  final CourseType? type;
  final String? teacher;
  final String? className;
  final List<(DayOfWeek, Period)>? schedule;
  final String? classroom;
  final String? status;
  final String? language;
  final String? remarks;
  final bool? isPractice;

  CourseSchedule({
    this.id,
    this.name,
    this.credits,
    this.hours,
    this.type,
    this.teacher,
    this.className,
    this.schedule,
    this.classroom,
    this.status,
    this.language,
    this.remarks,
    this.isPractice,
  });
}
