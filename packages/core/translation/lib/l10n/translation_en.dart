import 'translation.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get about => 'About';

  @override
  String get accounts => 'Accounts';

  @override
  String get addDisputePlaceholder => 'Input the dispute reason here...';

  @override
  String get addDisputeReason => 'Add Dispute Reason';

  @override
  String get addDisputeReasonDecs => 'Add information to support the dispute';

  @override
  String get biometricAuthFootnote => 'Please select an authentication method\nto sign in to the app in the future';

  @override
  String get biometricAuthTitle => 'You have successfully become a\nPINET user!';

  @override
  String get biometricFaceIDSetup => 'Face ID Setup';

  @override
  String get biometricSetupDesc => 'You can turn this feature on or off at any time\nunder Settings.';

  @override
  String get biometricSetupLater => 'Setup Later';

  @override
  String biometricSetupTitle(Object biometricType) {
    return '$biometricType ID is now available! Enabling $biometricType ID\nwill give you faster access to your information';
  }

  @override
  String get biometricTouchIDSetup => 'Touch ID Setup';

  @override
  String get creationTime => 'Creation Time';

  @override
  String get dashboardSlogan => 'Simplify your digital consumption';

  @override
  String get dashboardSloganFootnote => 'PINET makes your digital consumption more\nconvenient and accessible';

  @override
  String get dashboardStartButton => 'I\'m ready to begin';

  @override
  String get description => 'Description';

  @override
  String get disputeRequest => 'Dispute Request';

  @override
  String get disputeThanksDesc => 'Thank you for contacting us regarding your dispute. We have\nreceived your request and will investigate it promptly.';

  @override
  String dueDate(Object dueDate) {
    return 'Due date: $dueDate';
  }

  @override
  String get enable => 'Enable';

  @override
  String get language => 'Language';

  @override
  String get logOut => 'Logout';

  @override
  String get notification => 'Notification';

  @override
  String get overview => 'Overview';

  @override
  String get pinCodeSetup => 'PIN Code Setup';

  @override
  String get pinCodeSetupTitle => 'Use a 6-digits PIN Code to sign in to the app';

  @override
  String get profile => 'Profile';

  @override
  String get publisher => 'Publisher';

  @override
  String get reason => 'Reason';

  @override
  String get relatedConsumptionActivities => 'Related Consumption Activities';

  @override
  String get scanQRCode => 'Scan QR Code';

  @override
  String get scanQRCodeGuide => 'Hold the code inside the frame, it will\nbe scanned automatically';

  @override
  String get selectPeriod => 'Select Period';

  @override
  String get settings => 'Settings';

  @override
  String get status => 'Status';

  @override
  String get statusInDispute => 'In Dispute';

  @override
  String get statusInReview => 'In Review';

  @override
  String get statusSuccess => 'Success';

  @override
  String get submit => 'Submit';

  @override
  String get thankYou => 'Thank you!';

  @override
  String get thisMonth => 'This month';

  @override
  String get transactionDate => 'Transaction Date';

  @override
  String get transactionDetails => 'Transaction Details';

  @override
  String get transactions => 'Transactions';

  @override
  String get userPolicy => 'User Policy';

  @override
  String get verifyCode => 'Verify Code';

  @override
  String get verifyCodeGuidePrefix => 'Input this code on the ';

  @override
  String get verifyCodeGuideSuffix => '  to complete your registration';
}
