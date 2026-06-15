import 'package:flutter/material.dart';
import '../../models/student_model.dart';
import '../../services/student_service.dart';

class EditStudentScreen extends StatefulWidget {
  final Student student;

  const EditStudentScreen({super.key, required this.student});

  @override
  State<EditStudentScreen> createState() => _EditStudentScreenState();
}

class _EditStudentScreenState extends State<EditStudentScreen> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController nameController;
  late TextEditingController rollController;
  late TextEditingController classController;
  late TextEditingController phoneController;

  final StudentService _studentService = StudentService();

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    nameController = TextEditingController(text: widget.student.name);

    rollController = TextEditingController(text: widget.student.rollNumber);

    classController = TextEditingController(text: widget.student.className);

    phoneController = TextEditingController(text: widget.student.phoneNumber);
  }

  Future<void> updateStudent() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isLoading = true;
    });

    Student updatedStudent = Student(
      id: widget.student.id,
      name: nameController.text.trim(),
      rollNumber: rollController.text.trim(),
      className: classController.text.trim(),
      phoneNumber: phoneController.text.trim(),
      createdBy: widget.student.createdBy,
    );

    await _studentService.updateStudent(updatedStudent);

    if (!mounted) return;

    Navigator.pop(context);
  }

  @override
  void dispose() {
    nameController.dispose();
    rollController.dispose();
    classController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Student")),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: rollController,
                decoration: const InputDecoration(
                  labelText: "Roll Number",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: classController,
                decoration: const InputDecoration(
                  labelText: "Class Name",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: phoneController,
                decoration: const InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 25),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _isLoading ? null : updateStudent,

                  child: const Text("Update Student"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
