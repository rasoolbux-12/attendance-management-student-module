class Student {
  String? id;
  String name;
  String rollNumber;
  String className;
  String phoneNumber;
  String createdBy;

  Student({
    this.id,
    required this.name,
    required this.rollNumber,
    required this.className,
    required this.phoneNumber,
    required this.createdBy,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'rollNumber': rollNumber,
      'className': className,
      'phoneNumber': phoneNumber,
      'createdBy': createdBy,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map, String documentId) {
    return Student(
      id: documentId,
      name: map['name'] ?? '',
      rollNumber: map['rollNumber'] ?? '',
      className: map['className'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      createdBy: map['createdBy'] ?? '',
    );
  }
}
