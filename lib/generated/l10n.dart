// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hoodie`
  String get hoodie {
    return Intl.message(
      'Hoodie',
      name: 'hoodie',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.`
  String get content {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      name: 'content',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message(
      'Sign Up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Email@email.com`
  String get email {
    return Intl.message(
      'Email@email.com',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get log_out {
    return Intl.message(
      'Log Out',
      name: 'log_out',
      desc: '',
      args: [],
    );
  }

  /// `Home Page`
  String get home_page {
    return Intl.message(
      'Home Page',
      name: 'home_page',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `S`
  String get s {
    return Intl.message(
      'S',
      name: 's',
      desc: '',
      args: [],
    );
  }

  /// `M`
  String get m {
    return Intl.message(
      'M',
      name: 'm',
      desc: '',
      args: [],
    );
  }

  /// `L`
  String get l {
    return Intl.message(
      'L',
      name: 'l',
      desc: '',
      args: [],
    );
  }

  /// `XL`
  String get xl {
    return Intl.message(
      'XL',
      name: 'xl',
      desc: '',
      args: [],
    );
  }

  /// `Buy Now`
  String get buy_now {
    return Intl.message(
      'Buy Now',
      name: 'buy_now',
      desc: '',
      args: [],
    );
  }

  /// `See More`
  String get see_more {
    return Intl.message(
      'See More',
      name: 'see_more',
      desc: '',
      args: [],
    );
  }

  /// `Red Handbag`
  String get red_handbag {
    return Intl.message(
      'Red Handbag',
      name: 'red_handbag',
      desc: '',
      args: [],
    );
  }

  /// `Orange Hoodie`
  String get orange_hoodie {
    return Intl.message(
      'Orange Hoodie',
      name: 'orange_hoodie',
      desc: '',
      args: [],
    );
  }

  /// `Register Account`
  String get register_account {
    return Intl.message(
      'Register Account',
      name: 'register_account',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get welcome_back {
    return Intl.message(
      'Welcome Back',
      name: 'welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `Complete your details`
  String get complete_your_details {
    return Intl.message(
      'Complete your details',
      name: 'complete_your_details',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with your email and password`
  String get sign_in_with_your_email_and_password {
    return Intl.message(
      'Sign in with your email and password',
      name: 'sign_in_with_your_email_and_password',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email0 {
    return Intl.message(
      'Email',
      name: 'email0',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue0 {
    return Intl.message(
      'Continue',
      name: 'continue0',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get already_have_an_account {
    return Intl.message(
      'Already have an account?',
      name: 'already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dont_have_an_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dont_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Shop`
  String get flutter_shop {
    return Intl.message(
      'Flutter Shop',
      name: 'flutter_shop',
      desc: '',
      args: [],
    );
  }

  /// `Men`
  String get men {
    return Intl.message(
      'Men',
      name: 'men',
      desc: '',
      args: [],
    );
  }

  /// `Women`
  String get women {
    return Intl.message(
      'Women',
      name: 'women',
      desc: '',
      args: [],
    );
  }

  /// `Recommended for you`
  String get recommended_for_you {
    return Intl.message(
      'Recommended for you',
      name: 'recommended_for_you',
      desc: '',
      args: [],
    );
  }

  /// `Best Selling`
  String get best_selling {
    return Intl.message(
      'Best Selling',
      name: 'best_selling',
      desc: '',
      args: [],
    );
  }

  /// `Choose \na category`
  String get choose_a_category {
    return Intl.message(
      'Choose \na category',
      name: 'choose_a_category',
      desc: '',
      args: [],
    );
  }

  /// `Discover the latest in athletic footwear and apparel`
  String get discover_the_latest_in_athletic_footwear_and_apparel {
    return Intl.message(
      'Discover the latest in athletic footwear and apparel',
      name: 'discover_the_latest_in_athletic_footwear_and_apparel',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get get_started {
    return Intl.message(
      'Get Started',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `€130.99`
  String get price {
    return Intl.message(
      '€130.99',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `20€`
  String get price0 {
    return Intl.message(
      '20€',
      name: 'price0',
      desc: '',
      args: [],
    );
  }

  /// `50€`
  String get price1 {
    return Intl.message(
      '50€',
      name: 'price1',
      desc: '',
      args: [],
    );
  }

  /// `5€`
  String get price2 {
    return Intl.message(
      '5€',
      name: 'price2',
      desc: '',
      args: [],
    );
  }

  /// `35€`
  String get price3 {
    return Intl.message(
      '35€',
      name: 'price3',
      desc: '',
      args: [],
    );
  }

  /// `28€`
  String get price4 {
    return Intl.message(
      '28€',
      name: 'price4',
      desc: '',
      args: [],
    );
  }

  /// `10€`
  String get price5 {
    return Intl.message(
      '10€',
      name: 'price5',
      desc: '',
      args: [],
    );
  }

  /// `30€`
  String get price6 {
    return Intl.message(
      '30€',
      name: 'price6',
      desc: '',
      args: [],
    );
  }

  /// `24€`
  String get price7 {
    return Intl.message(
      '24€',
      name: 'price7',
      desc: '',
      args: [],
    );
  }

  /// `15€`
  String get price8 {
    return Intl.message(
      '15€',
      name: 'price8',
      desc: '',
      args: [],
    );
  }

  /// `26€`
  String get price9 {
    return Intl.message(
      '26€',
      name: 'price9',
      desc: '',
      args: [],
    );
  }

  /// `Black T-shirt`
  String get black_t_shirt {
    return Intl.message(
      'Black T-shirt',
      name: 'black_t_shirt',
      desc: '',
      args: [],
    );
  }

  /// `Black Hoodie`
  String get black_hoodie {
    return Intl.message(
      'Black Hoodie',
      name: 'black_hoodie',
      desc: '',
      args: [],
    );
  }

  /// `Colorful Hoodie`
  String get colorful_hoodie {
    return Intl.message(
      'Colorful Hoodie',
      name: 'colorful_hoodie',
      desc: '',
      args: [],
    );
  }

  /// `Black Pants`
  String get black_pants {
    return Intl.message(
      'Black Pants',
      name: 'black_pants',
      desc: '',
      args: [],
    );
  }

  /// `Venom Hoodie`
  String get venom_hoodie {
    return Intl.message(
      'Venom Hoodie',
      name: 'venom_hoodie',
      desc: '',
      args: [],
    );
  }

  /// `Flame Hoodie`
  String get flame_hoodie {
    return Intl.message(
      'Flame Hoodie',
      name: 'flame_hoodie',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Contact us`
  String get contact_us {
    return Intl.message(
      'Contact us',
      name: 'contact_us',
      desc: '',
      args: [],
    );
  }

  /// `eryklorenc11@gmail.com`
  String get me {
    return Intl.message(
      'eryklorenc11@gmail.com',
      name: 'me',
      desc: '',
      args: [],
    );
  }

  /// `https://github.com/eryklorenc`
  String get github {
    return Intl.message(
      'https://github.com/eryklorenc',
      name: 'github',
      desc: '',
      args: [],
    );
  }

  /// `Edit profile`
  String get edit_profile {
    return Intl.message(
      'Edit profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Privacy & Security`
  String get privacy_security {
    return Intl.message(
      'Privacy & Security',
      name: 'privacy_security',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions`
  String get terms_and_conditions {
    return Intl.message(
      'Terms and Conditions',
      name: 'terms_and_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Change password`
  String get change_password {
    return Intl.message(
      'Change password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Current Password`
  String get current_password {
    return Intl.message(
      'Current Password',
      name: 'current_password',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get new_password {
    return Intl.message(
      'New Password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get confirm_new_password {
    return Intl.message(
      'Confirm New Password',
      name: 'confirm_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Change e-mail`
  String get change_e_mail {
    return Intl.message(
      'Change e-mail',
      name: 'change_e_mail',
      desc: '',
      args: [],
    );
  }

  /// `New e-mail`
  String get new_e_mail {
    return Intl.message(
      'New e-mail',
      name: 'new_e_mail',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Password has been changed`
  String get password_has_been_changed {
    return Intl.message(
      'Password has been changed',
      name: 'password_has_been_changed',
      desc: '',
      args: [],
    );
  }

  /// `Error, password does not match`
  String get error_password_does_not_match {
    return Intl.message(
      'Error, password does not match',
      name: 'error_password_does_not_match',
      desc: '',
      args: [],
    );
  }

  /// `Email has been changed`
  String get email_has_been_changed {
    return Intl.message(
      'Email has been changed',
      name: 'email_has_been_changed',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while changing the email address`
  String get an_error_occurred_while_changing_the_email_address {
    return Intl.message(
      'An error occurred while changing the email address',
      name: 'an_error_occurred_while_changing_the_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Shopping Cart`
  String get shopping_cart {
    return Intl.message(
      'Shopping Cart',
      name: 'shopping_cart',
      desc: '',
      args: [],
    );
  }

  /// `change your profile picture`
  String get change_your_profile_picture {
    return Intl.message(
      'change your profile picture',
      name: 'change_your_profile_picture',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get email_address {
    return Intl.message(
      'Email address',
      name: 'email_address',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contact {
    return Intl.message(
      'Contact Us',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `There was an error: {state.errorMessage}`
  String get there_was_an_error {
    return Intl.message(
      'There was an error: {state.errorMessage}',
      name: 'there_was_an_error',
      desc: '',
      args: [],
    );
  }

  /// `Address not found`
  String get address_not_found {
    return Intl.message(
      'Address not found',
      name: 'address_not_found',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
