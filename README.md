# 🎓 Attendance Management System - Student Module

A modern Flutter-based Student Management Module developed as part of the **Attendance Management System (AMS)**.

This module provides complete student record management with **Firebase Firestore integration**, real-time updates, search functionality, and a clean user interface.

---

## ✨ Features

### 👨‍🎓 Student Management

* ➕ Add New Students
* ✏️ Edit Student Information
* 🗑️ Delete Students (Swipe to Delete)
* 📋 View All Students

### 🔍 Smart Search

* Search by Student Name
* Search by Roll Number
* Instant Real-Time Filtering

### ✅ Validation

* Duplicate Roll Number Detection
* Form Validation
* User-Friendly Error Messages

### 🎨 Modern UI

* Professional Orange Theme
* Dashboard Statistics Card
* Modern Search Bar
* Student Avatars
* Responsive Student Cards
* Empty State Design
* Confirmation Dialogs

### ☁️ Firebase Integration

* Cloud Firestore Database
* Real-Time Synchronization
* Automatic Data Refresh

---

## 🛠️ Technologies Used

| Technology         | Purpose                |
| ------------------ | ---------------------- |
| Flutter            | Mobile App Development |
| Dart               | Programming Language   |
| Firebase Firestore | Cloud Database         |
| Material Design    | UI Components          |

---

## 📂 Project Structure

```text
lib/
│
├── models/
│   └── student_model.dart
│
├── services/
│   └── student_service.dart
│
├── screens/
│   └── students/
│       ├── student_list_screen.dart
│       ├── add_student_screen.dart
│       └── edit_student_screen.dart
│
├── firebase_options.dart
└── main.dart
```

---

## 📊 Student Data Model

Each student record contains:

```text
ID
Name
Roll Number
Class Name
Phone Number
Created By
```

---

## 📱 Module Screens

### 📋 Student List Screen

* View all students
* Search functionality
* Total student count
* Edit and delete actions

### ➕ Add Student Screen

* Add new student records
* Duplicate roll number validation

### ✏️ Edit Student Screen

* Update student details
* Pre-filled form fields

---

## 🧪 Testing Checklist

* [x] Add Student
* [x] Update Student
* [x] Display Students in Real-Time
* [x] Duplicate Roll Number Validation
* [x] Floating Action Button
* [x] Student Count Display
* [x] Delete Student
* [x] Swipe-to-Delete
* [x] Search Functionality
* [x] Edit Student Screen
* [x] Edit Button on Cards
* [x] Empty State Widget

---

## 🚀 Build APK

Generate a release APK:

```bash
flutter build apk --release
```

APK Output:

```text
build/app/outputs/flutter-apk/app-release.apk
```

---

## 🔥 Firebase Features

* Real-Time Database Updates
* Cloud Firestore Integration
* Live Student Synchronization
* Scalable Data Structure

---

## 👨‍💻 Developer

**Rasool Bux**

Flutter Developer

---

## 📌 Project Status

🟢 Completed

🟢 Fully Tested

🟢 Firebase Integrated

🟢 APK Generated

🟢 Ready for Submission

🟢 Ready for Team Integration

---

⭐ If you found this project useful, consider giving it a star.
