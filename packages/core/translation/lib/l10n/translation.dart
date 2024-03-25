import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'translation_en.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/translation.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @accounts.
  ///
  /// In en, this message translates to:
  /// **'Accounts'**
  String get accounts;

  /// No description provided for @addDisputePlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Input the dispute reason here...'**
  String get addDisputePlaceholder;

  /// No description provided for @addDisputeReason.
  ///
  /// In en, this message translates to:
  /// **'Add Dispute Reason'**
  String get addDisputeReason;

  /// No description provided for @addDisputeReasonDecs.
  ///
  /// In en, this message translates to:
  /// **'Add information to support the dispute'**
  String get addDisputeReasonDecs;

  /// No description provided for @biometricAuthFootnote.
  ///
  /// In en, this message translates to:
  /// **'Please select an authentication method\nto sign in to the app in the future'**
  String get biometricAuthFootnote;

  /// No description provided for @biometricAuthTitle.
  ///
  /// In en, this message translates to:
  /// **'You have successfully become a\nPINET user!'**
  String get biometricAuthTitle;

  /// No description provided for @biometricFaceIDSetup.
  ///
  /// In en, this message translates to:
  /// **'Face ID Setup'**
  String get biometricFaceIDSetup;

  /// No description provided for @biometricSetupDesc.
  ///
  /// In en, this message translates to:
  /// **'You can turn this feature on or off at any time\nunder Settings.'**
  String get biometricSetupDesc;

  /// No description provided for @biometricSetupLater.
  ///
  /// In en, this message translates to:
  /// **'Setup Later'**
  String get biometricSetupLater;

  /// No description provided for @biometricSetupTitle.
  ///
  /// In en, this message translates to:
  /// **'{biometricType} ID is now available! Enabling {biometricType} ID\nwill give you faster access to your information'**
  String biometricSetupTitle(Object biometricType);

  /// No description provided for @biometricTouchIDSetup.
  ///
  /// In en, this message translates to:
  /// **'Touch ID Setup'**
  String get biometricTouchIDSetup;

  /// No description provided for @creationTime.
  ///
  /// In en, this message translates to:
  /// **'Creation Time'**
  String get creationTime;

  /// No description provided for @dashboardSlogan.
  ///
  /// In en, this message translates to:
  /// **'Simplify your digital consumption'**
  String get dashboardSlogan;

  /// No description provided for @dashboardSloganFootnote.
  ///
  /// In en, this message translates to:
  /// **'PINET makes your digital consumption more\nconvenient and accessible'**
  String get dashboardSloganFootnote;

  /// No description provided for @dashboardStartButton.
  ///
  /// In en, this message translates to:
  /// **'I\'m ready to begin'**
  String get dashboardStartButton;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @disputeRequest.
  ///
  /// In en, this message translates to:
  /// **'Dispute Request'**
  String get disputeRequest;

  /// No description provided for @disputeThanksDesc.
  ///
  /// In en, this message translates to:
  /// **'Thank you for contacting us regarding your dispute. We have\nreceived your request and will investigate it promptly.'**
  String get disputeThanksDesc;

  /// No description provided for @dueDate.
  ///
  /// In en, this message translates to:
  /// **'Due date: {dueDate}'**
  String dueDate(Object dueDate);

  /// No description provided for @enable.
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get enable;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logOut;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// No description provided for @pinCodeSetup.
  ///
  /// In en, this message translates to:
  /// **'PIN Code Setup'**
  String get pinCodeSetup;

  /// No description provided for @pinCodeSetupTitle.
  ///
  /// In en, this message translates to:
  /// **'Use a 6-digits PIN Code to sign in to the app'**
  String get pinCodeSetupTitle;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @publisher.
  ///
  /// In en, this message translates to:
  /// **'Publisher'**
  String get publisher;

  /// No description provided for @reason.
  ///
  /// In en, this message translates to:
  /// **'Reason'**
  String get reason;

  /// No description provided for @relatedConsumptionActivities.
  ///
  /// In en, this message translates to:
  /// **'Related Consumption Activities'**
  String get relatedConsumptionActivities;

  /// No description provided for @scanQRCode.
  ///
  /// In en, this message translates to:
  /// **'Scan QR Code'**
  String get scanQRCode;

  /// No description provided for @scanQRCodeGuide.
  ///
  /// In en, this message translates to:
  /// **'Hold the code inside the frame, it will\nbe scanned automatically'**
  String get scanQRCodeGuide;

  /// No description provided for @selectPeriod.
  ///
  /// In en, this message translates to:
  /// **'Select Period'**
  String get selectPeriod;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @statusInDispute.
  ///
  /// In en, this message translates to:
  /// **'In Dispute'**
  String get statusInDispute;

  /// No description provided for @statusInReview.
  ///
  /// In en, this message translates to:
  /// **'In Review'**
  String get statusInReview;

  /// No description provided for @statusSuccess.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get statusSuccess;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @thankYou.
  ///
  /// In en, this message translates to:
  /// **'Thank you!'**
  String get thankYou;

  /// No description provided for @thisMonth.
  ///
  /// In en, this message translates to:
  /// **'This month'**
  String get thisMonth;

  /// No description provided for @transactionDate.
  ///
  /// In en, this message translates to:
  /// **'Transaction Date'**
  String get transactionDate;

  /// No description provided for @transactionDetails.
  ///
  /// In en, this message translates to:
  /// **'Transaction Details'**
  String get transactionDetails;

  /// No description provided for @transactions.
  ///
  /// In en, this message translates to:
  /// **'Transactions'**
  String get transactions;

  /// No description provided for @userPolicy.
  ///
  /// In en, this message translates to:
  /// **'User Policy'**
  String get userPolicy;

  /// No description provided for @verifyCode.
  ///
  /// In en, this message translates to:
  /// **'Verify Code'**
  String get verifyCode;

  /// No description provided for @verifyCodeGuidePrefix.
  ///
  /// In en, this message translates to:
  /// **'Input this code on the '**
  String get verifyCodeGuidePrefix;

  /// No description provided for @verifyCodeGuideSuffix.
  ///
  /// In en, this message translates to:
  /// **'  to complete your registration'**
  String get verifyCodeGuideSuffix;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
