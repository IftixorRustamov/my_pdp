class CourseUnit {
  final String unit;
  final String? iSemesterHours;
  final String? iiSemesterHours;

  const CourseUnit(
      {required this.unit, this.iSemesterHours, this.iiSemesterHours});
}

class Course {
  final String name;
  final List<CourseUnit> units;

  const Course({required this.name, required this.units});
}

final List<Course> courseData = [
  Course(
    name: "1st Course - BTEC",
    units: [
      CourseUnit(
          unit: "Information Technology Systems",
          iSemesterHours: "2",
          iiSemesterHours: "2"),
      CourseUnit(
          unit: "Website Development",
          iSemesterHours: "2",
          iiSemesterHours: "2"),
      CourseUnit(unit: "Programming", iSemesterHours: "4", iiSemesterHours: ""),
      CourseUnit(
          unit: "Enterprise in IT", iSemesterHours: "1", iiSemesterHours: ""),
      CourseUnit(unit: "BPM", iSemesterHours: "", iiSemesterHours: "1"),
      CourseUnit(unit: "AI", iSemesterHours: "", iiSemesterHours: "1"),
      CourseUnit(
          unit: "Big Data and Business Analytics",
          iSemesterHours: "",
          iiSemesterHours: "2"),
      CourseUnit(unit: "Full stack", iSemesterHours: "", iiSemesterHours: "4"),
      CourseUnit(unit: "English", iSemesterHours: "3", iiSemesterHours: "2"),
    ],
  ),
  Course(
    name: "2nd Course - AI",
    units: [
      CourseUnit(
          unit: "Professional Practice in the Digital Economy",
          iSemesterHours: "1",
          iiSemesterHours: ""),
      CourseUnit(
          unit: "Innovation & Digital Transformation",
          iSemesterHours: "",
          iiSemesterHours: "1"),
      CourseUnit(
          unit: "Cyber Security", iSemesterHours: "", iiSemesterHours: "1"),
      CourseUnit(
          unit: "Programming", iSemesterHours: "4", iiSemesterHours: "3"),
      CourseUnit(
          unit: "Big Data & Visualisation",
          iSemesterHours: "2",
          iiSemesterHours: ""),
      CourseUnit(
          unit: "Cloud Fundamentals", iSemesterHours: "", iiSemesterHours: "2"),
      CourseUnit(
          unit: "Fundamentals of AI and Intelligent systems",
          iSemesterHours: "5",
          iiSemesterHours: "4"),
      CourseUnit(
          unit: "Software Development Lifecycles",
          iSemesterHours: "",
          iiSemesterHours: "1"),
      CourseUnit(unit: "English", iSemesterHours: "3", iiSemesterHours: "3"),
    ],
  ),
  Course(
    name: "2nd Course - Business",
    units: [
      CourseUnit(
          unit: "Professional Practice in the Digital Economy",
          iSemesterHours: "2",
          iiSemesterHours: ""),
      CourseUnit(
          unit: "Innovation & Digital Transformation",
          iSemesterHours: "",
          iiSemesterHours: "1"),
      CourseUnit(
          unit: "Cyber Security", iSemesterHours: "", iiSemesterHours: "1"),
      CourseUnit(unit: "Programming", iSemesterHours: "2", iiSemesterHours: ""),
      CourseUnit(
          unit: "Big Data & Visualisation",
          iSemesterHours: "2",
          iiSemesterHours: ""),
      CourseUnit(
          unit: "Cloud Fundamentals", iSemesterHours: "", iiSemesterHours: "2"),
      CourseUnit(
          unit: "Management in the Digital Economy",
          iSemesterHours: "4",
          iiSemesterHours: "5"),
      CourseUnit(
          unit: "Project Management",
          iSemesterHours: "2",
          iiSemesterHours: "3"),
      CourseUnit(unit: "English", iSemesterHours: "3", iiSemesterHours: "3"),
    ],
  ),
  Course(
    name: "2nd Course - Data Analytics",
    units: [
      CourseUnit(
          unit: "Professional Practice in the Digital Economy",
          iSemesterHours: "1",
          iiSemesterHours: ""),
      CourseUnit(
          unit: "Innovation & Digital Transformation",
          iSemesterHours: "",
          iiSemesterHours: "1"),
      CourseUnit(
          unit: "Cyber Security", iSemesterHours: "", iiSemesterHours: "1"),
      CourseUnit(unit: "Programming", iSemesterHours: "2", iiSemesterHours: ""),
      CourseUnit(
          unit: "Big Data & Visualisation",
          iSemesterHours: "2",
          iiSemesterHours: ""),
      CourseUnit(
          unit: "Networking in the Cloud",
          iSemesterHours: "",
          iiSemesterHours: "2"),
      CourseUnit(
          unit: "Database Design & Development",
          iSemesterHours: "3",
          iiSemesterHours: "3"),
      CourseUnit(
          unit: "Data Analytics", iSemesterHours: "4", iiSemesterHours: "5"),
      CourseUnit(unit: "English", iSemesterHours: "3", iiSemesterHours: "3"),
    ],
  ),
  Course(
    name: "2nd Course - Software",
    units: [
      CourseUnit(
          unit: "Professional Practice in the Digital Economy",
          iSemesterHours: "1",
          iiSemesterHours: ""),
      CourseUnit(
          unit: "Innovation & Digital Transformation",
          iSemesterHours: "",
          iiSemesterHours: "1"),
      CourseUnit(
          unit: "Cyber Security", iSemesterHours: "", iiSemesterHours: "1"),
      CourseUnit(
          unit: "Programming", iSemesterHours: "5", iiSemesterHours: "4"),
      CourseUnit(
          unit: "Big Data & Visualization",
          iSemesterHours: "2",
          iiSemesterHours: ""),
      CourseUnit(
          unit: "Networking in the Cloud",
          iSemesterHours: "",
          iiSemesterHours: "2"),
      CourseUnit(
          unit: "Database Design & Development",
          iSemesterHours: "4",
          iiSemesterHours: ""),
      CourseUnit(
          unit: "Software Development Lifecycles",
          iSemesterHours: "",
          iiSemesterHours: "4"),
      CourseUnit(unit: "English", iSemesterHours: "3", iiSemesterHours: "3"),
    ],
  ),
  Course(
    name: "3rd Course - AI",
    units: [
      CourseUnit(
          unit: "Business Intelligence",
          iSemesterHours: "",
          iiSemesterHours: "2"),
      CourseUnit(
          unit: "Internet of Things", iSemesterHours: "2", iiSemesterHours: ""),
      CourseUnit(
          unit: "Emerging Technologies",
          iSemesterHours: "",
          iiSemesterHours: "1"),
      CourseUnit(
          unit: "Risk Analysis and Systems Testing",
          iSemesterHours: "1",
          iiSemesterHours: ""),
      CourseUnit(
          unit: "Application Development",
          iSemesterHours: "3",
          iiSemesterHours: "3"),
      CourseUnit(
          unit: "Application Program Interfaces",
          iSemesterHours: "3",
          iiSemesterHours: "3"),
      CourseUnit(
          unit: "Digital Sustainability",
          iSemesterHours: "1",
          iiSemesterHours: ""),
      CourseUnit(
          unit: "Pitching and Negotiating Skills",
          iSemesterHours: "",
          iiSemesterHours: "1"),
      CourseUnit(unit: "Falsafa", iSemesterHours: "2", iiSemesterHours: ""),
      CourseUnit(
          unit: "O'zbekistonning eng yangi tarixi",
          iSemesterHours: "",
          iiSemesterHours: "2"),
    ],
  ),
  Course(
    name: "3rd Course - Business",
    units: [
      CourseUnit(
          unit: "Business Intelligence",
          iSemesterHours: "",
          iiSemesterHours: "2"),
      CourseUnit(
          unit: "Internet of Things", iSemesterHours: "2", iiSemesterHours: ""),
      CourseUnit(
          unit: "Emerging Technologies",
          iSemesterHours: "",
          iiSemesterHours: "1"),
      CourseUnit(
          unit: "Digital Technology as a Catalyst for Change",
          iSemesterHours: "1",
          iiSemesterHours: ""),
      CourseUnit(
          unit: "Applied Analytical Models",
          iSemesterHours: "3",
          iiSemesterHours: "3"),
      CourseUnit(
          unit: "Business Information Technology Systems",
          iSemesterHours: "3",
          iiSemesterHours: "3"),
      CourseUnit(
          unit: "Digital Sustainability",
          iSemesterHours: "1",
          iiSemesterHours: ""),
      CourseUnit(
          unit: "Pitching and Negotiating Skills",
          iSemesterHours: "",
          iiSemesterHours: "1"),
      CourseUnit(unit: "Falsafa", iSemesterHours: "2", iiSemesterHours: ""),
      CourseUnit(
          unit: "O'zbekistonning eng yangi tarixi",
          iSemesterHours: "",
          iiSemesterHours: "2"),
    ],
  ),
  Course(
    name: "3rd Course - Data",
    units: [
      CourseUnit(
          unit: "Business Intelligence",
          iSemesterHours: "",
          iiSemesterHours: "2"),
      CourseUnit(
          unit: "Internet of Things", iSemesterHours: "2", iiSemesterHours: ""),
      CourseUnit(
          unit: "Emerging Technologies",
          iSemesterHours: "",
          iiSemesterHours: "1"),
      CourseUnit(
          unit: "Risk Analysis and Systems Testing",
          iSemesterHours: "1",
          iiSemesterHours: ""),
      CourseUnit(
          unit: "Applied Analytical Models",
          iSemesterHours: "3",
          iiSemesterHours: "3"),
      CourseUnit(
          unit: "Business Information Technology Systems",
          iSemesterHours: "3",
          iiSemesterHours: "3"),
      CourseUnit(
          unit: "Digital Sustainability",
          iSemesterHours: "1",
          iiSemesterHours: ""),
      CourseUnit(
          unit: "Pitching and Negotiating Skills",
          iSemesterHours: "",
          iiSemesterHours: "1"),
      CourseUnit(unit: "Falsafa", iSemesterHours: "2", iiSemesterHours: ""),
      CourseUnit(
          unit: "O'zbekistonning eng yangi tarixi",
          iSemesterHours: "",
          iiSemesterHours: "2"),
    ],
  ),
  Course(
    name: "3rd Course - Software",
    units: [
      CourseUnit(
          unit: "Business Intelligence",
          iSemesterHours: "",
          iiSemesterHours: "2"),
      CourseUnit(
          unit: "Internet of Things", iSemesterHours: "2", iiSemesterHours: ""),
      CourseUnit(
          unit: "Emerging Technologies",
          iSemesterHours: "",
          iiSemesterHours: "1"),
      CourseUnit(
          unit: "Risk Analysis and Systems Testing",
          iSemesterHours: "1",
          iiSemesterHours: ""),
      CourseUnit(
          unit: "Advanced Programming",
          iSemesterHours: "3",
          iiSemesterHours: "3"),
      CourseUnit(
          unit: "Data Structures & Algorithms",
          iSemesterHours: "3",
          iiSemesterHours: "3"),
      CourseUnit(
          unit: "Digital Sustainability",
          iSemesterHours: "1",
          iiSemesterHours: ""),
      CourseUnit(
          unit: "Pitching and Negotiating Skills",
          iSemesterHours: "",
          iiSemesterHours: "1"),
      CourseUnit(unit: "Falsafa", iSemesterHours: "2", iiSemesterHours: ""),
      CourseUnit(
          unit: "O'zbekistonning eng yangi tarixi",
          iSemesterHours: "",
          iiSemesterHours: "2"),
    ],
  ),
];
