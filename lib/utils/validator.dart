// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class Validator {
  static FormFieldValidator<String> email = (email) {
    if (email == null || email.isEmpty) {
      return 'Email is required.';
    }

    String pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(email)) {
      return 'The email you entered is invalid.';
    }

    return null;
  };

  static FormFieldValidator<String> fullName = (fullName) {
    if (fullName == null || fullName.isEmpty) {
      return 'Full name is required.';
    }

    return null;
  };

  static FormFieldValidator<String> password = (password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    }

    if (password.length < 7) {
      return "Password is invalid.";
    }

    return null;
  };

  static FormFieldValidator<String> currentPassword = (password) {
    if (password == null || password.isEmpty) {
      return 'Old Password is required';
    }

    if (password.length < 7) {
      return "Password is invalid.";
    }

    return null;
  };

  static FormFieldValidator<String> newPassword = (password) {
    if (password == null || password.isEmpty) {
      return 'New Password is required';
    }

    if (password.length < 7) {
      return "Password is invalid.";
    }

    return null;
  };

  static FormFieldValidator<String> code = (code) {
    if (code == null || code.isEmpty) {
      return 'Code is required.';
    }

    if (code.length != 4) {
      return "Code is invalid.";
    }

    return null;
  };

  static FormFieldValidator<String> address = (address) {
    if (address == null || address.isEmpty) {
      return 'Address is required.';
    }

    return null;
  };

  static FormFieldValidator<String> phoneNumber = (phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      return 'Phone number is required.';
    }

    return null;
  };

  static FormFieldValidator<String> message = (message) {
    if (message == null || message.isEmpty) {
      return 'Message is required.';
    }

    return null;
  };

  static FormFieldValidator<String>? cvv = (cvv) {
    if (cvv == null || cvv.isEmpty) {
      return 'CVV is required';
    }

    if (cvv.length < 3 || cvv.length > 4) {
      return "CVV is invalid.";
    }

    return null;
  };

  static FormFieldValidator<String>? dateOfBirth = (date) {
    if (date == null || date.isEmpty) {
      return 'Date of birth is required';
    }

    if (DateFormat.yMMMMd().parse(date).isAtLeastYearsOld(18)) {
      return 'You must be 18years and above';
    }

    return null;
  };

  static FormFieldValidator<String>? cardHolderName = (cardHolderName) {
    if (cardHolderName == null || cardHolderName.isEmpty) {
      return 'Name is required.';
    }

    return null;
  };

  /// Validate the card number with Luhn Algorithm
  /// https://en.wikipedia.org/wiki/Luhn_algorithm
  static FormFieldValidator<String>? cardNumber = (cardNumber) {
    if (cardNumber == null || cardNumber.isEmpty) {
      return 'Card Number is required.';
    }

    cardNumber = getCleanedNumber(cardNumber);

    if (cardNumber.length < 8) {
      return 'Card Number is invalid.';
    }

    int sum = 0;
    int length = cardNumber.length;
    for (var i = 0; i < length; i++) {
      /// get digits in reverse order
      int digit = int.parse(cardNumber[length - i - 1]);

      /// every 2nd number multiply with 2
      if (i % 2 == 1) {
        digit *= 2;
      }
      sum += digit > 9 ? (digit - 9) : digit;
    }

    if (sum % 10 == 0) {
      return null;
    }

    return 'Card Number is invalid.';
  };

  static FormFieldValidator<String>? date = (date) {
    if (date == null || date.isEmpty) {
      return 'Expiry Date is required.';
    }

    int year;
    int month;

    /// The date contains a forward slash if the month and year has been
    /// entered.
    if (date.contains(RegExp(r'(/)'))) {
      var split = date.split(RegExp(r'(/)'));

      /// The date before the slash is the month while the value to right of
      /// it is the year.
      month = int.parse(split[0]);
      year = int.parse(split[1]);
    } else {
      /// Only the month was entered
      month = int.parse(date.substring(0, (date.length)));
      year = -1; // Lets use an invalid year intentionally
    }

    if ((month < 1) || (month > 12)) {
      /// A valid month is between 1 (January) and 12 (December)
      return 'Expiry month is invalid.';
    }

    var fourDigitsYear = convertYearTo4Digits(year);
    if ((fourDigitsYear < 1) || (fourDigitsYear > 2099)) {
      /// We are assuming a valid year should be between 1 and 2099.
      /// Note that, it's valid doesn't mean that it has not expired.
      return 'Expiry year is invalid.';
    }

    if (!hasDateExpired(month, year)) {
      return "Card has expired.";
    }

    return null;
  };

  static String getCleanedNumber(String text) {
    RegExp regExp = RegExp(r"[^0-9]");
    return text.replaceAll(regExp, '');
  }

  /// Convert the two-digit year to four-digit year if necessary
  static int convertYearTo4Digits(int year) {
    if (year < 100 && year >= 0) {
      var now = DateTime.now();
      String currentYear = now.year.toString();
      String prefix = currentYear.substring(0, currentYear.length - 2);
      year = int.parse('$prefix${year.toString().padLeft(2, '0')}');
    }
    return year;
  }

  static bool hasDateExpired(int month, int year) {
    return isNotExpired(year, month);
  }

  static bool isNotExpired(int year, int month) {
    /// It has not expired if both the year and date has not passed
    return !hasYearPassed(year) && !hasMonthPassed(year, month);
  }

  static bool hasMonthPassed(int year, int month) {
    var now = DateTime.now();

    /// The month is invalid if:
    /// 1. The year is in the past. In that case, we just assume that the month
    /// is invalid
    /// 2. Card's month (plus another month) is more than current month.
    return hasYearPassed(year) ||
        convertYearTo4Digits(year) == now.year && (month < now.month + 1);
  }

  static bool hasYearPassed(int year) {
    int fourDigitsYear = convertYearTo4Digits(year);
    var now = DateTime.now();

    /// The year is invalid if the current year is more than card's year
    return fourDigitsYear < now.year;
  }
}

extension IsAtLeastYearsOld on DateTime {
  bool isAtLeastYearsOld(int years) {
    var now = DateTime.now();
    var boundaryDate = DateTime(now.year - years, now.month, now.day);

    // Discard the time from [this].
    var thisDate = DateTime(year, month, day);

    // Did [thisDate] occur on or before [boundaryDate]?
    return thisDate.compareTo(boundaryDate) > 0;
  }
}
