import 'package:flutter/material.dart';

class DetailFillerProvider with ChangeNotifier {
  /// general details
  int currentIndex = 0;

  /// screen 1
  String? fullName;
  int? idCardNo;
  int? passportNo;

  /// screen 2
  DateTime? dob;
  bool gender = true;
  String? countryOfBirth;
  String? nationality;

  /// screen 3
  String? email;
  int? telephoneNo;
  int? mobileNo;

  /// screen 3
  String? permanentAddress;
  String? city;
  String? state;
  String? country;

  /// screen 4
  String? occupation;
  String? company;
  String? industry;

  /// texteditingcontrollers
  TextEditingController nameController = TextEditingController();
  TextEditingController identityController = TextEditingController();
  TextEditingController passportController = TextEditingController();

  TextEditingController countryOfBirthController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController telephoneController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  TextEditingController occupationController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController industryController = TextEditingController();

  PageController pageController = PageController();

  /// setters
  setDob({required DateTime date}) {
    dob = date;
    notifyListeners();
  }

  setGender({required bool gen}) {
    gender = gen;
    notifyListeners();
  }

  prevScreen() {
    if (currentIndex != 0) {
      pageController.animateToPage(currentIndex - 1,
          duration: Duration(milliseconds: 800),
          curve: Curves.fastLinearToSlowEaseIn);
      currentIndex -= 1;
      notifyListeners();
    }
  }

  nextScreen() {
    if (currentIndex != 4) {
      pageController.animateToPage(currentIndex + 1,
          duration: Duration(milliseconds: 800),
          curve: Curves.fastLinearToSlowEaseIn);
      currentIndex += 1;
      notifyListeners();
    }
  }
}
