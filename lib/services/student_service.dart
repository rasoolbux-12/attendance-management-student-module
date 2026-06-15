import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/student_model.dart';

class StudentService {
  final CollectionReference _col = FirebaseFirestore.instance.collection(
    'students',
  );

  // Add Student
  Future<void> addStudent(Student student) async {
    await _col.add(student.toMap());
  }

  // Update Student
  Future<void> updateStudent(Student student) async {
    await _col.doc(student.id).update(student.toMap());
  }

  // Delete Student
  Future<void> deleteStudent(String id) async {
    await _col.doc(id).delete();
  }

  // Get Students Stream
  Stream<List<Student>> getStudentsStream() {
    return _col.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Student.fromMap(doc.data() as Map<String, dynamic>, doc.id);
      }).toList();
    });
  }

  // Check Duplicate Roll Number
  Future<bool> rollNumberExists(String rollNumber) async {
    final result = await _col.where('rollNumber', isEqualTo: rollNumber).get();

    return result.docs.isNotEmpty;
  }
}
