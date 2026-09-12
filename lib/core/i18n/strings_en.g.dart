///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<AppLocale, Translations> _meta;
	@override TranslationMetadata<AppLocale, Translations> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final Translations$app$en app = Translations$app$en.internal(_root);
	late final Translations$auth$en auth = Translations$auth$en.internal(_root);
	late final Translations$home$en home = Translations$home$en.internal(_root);
	late final Translations$fav$en fav = Translations$fav$en.internal(_root);
	late final Translations$book$en book = Translations$book$en.internal(_root);
	late final Translations$doctorDetails$en doctorDetails = Translations$doctorDetails$en.internal(_root);
	late final Translations$navigation$en navigation = Translations$navigation$en.internal(_root);
	late final Translations$onboarding$en onboarding = Translations$onboarding$en.internal(_root);
	late final Translations$common$en common = Translations$common$en.internal(_root);
}

// Path: app
class Translations$app$en {
	Translations$app$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Doctor Hunt'
	String get name => 'Doctor Hunt';
}

// Path: auth
class Translations$auth$en {
	Translations$auth$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final Translations$auth$login$en login = Translations$auth$login$en.internal(_root);
	late final Translations$auth$register$en register = Translations$auth$register$en.internal(_root);
	late final Translations$auth$forget$en forget = Translations$auth$forget$en.internal(_root);
	late final Translations$auth$role$en role = Translations$auth$role$en.internal(_root);
}

// Path: home
class Translations$home$en {
	Translations$home$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Hi {name}!'
	String get greeting => 'Hi {name}!';

	/// en: 'Find Your Doctor'
	String get title => 'Find Your Doctor';

	/// en: 'Live'
	String get live => 'Live';

	/// en: 'Live Doctors'
	String get liveTitle => 'Live Doctors';

	/// en: 'Popular Doctor'
	String get PopularTitle => 'Popular Doctor';

	/// en: 'See all'
	String get seeAll => 'See all';
}

// Path: fav
class Translations$fav$en {
	Translations$fav$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Favourite Doctors'
	String get favTitle => 'Favourite Doctors';
}

// Path: book
class Translations$book$en {
	Translations$book$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Find Doctors'
	String get bookTitle => 'Find Doctors';

	/// en: 'Book Now'
	String get bookButton => 'Book Now';

	/// en: 'Appointment'
	String get appointmentTitle => 'Appointment';

	/// en: 'Available Time'
	String get availableTime => 'Available Time';
}

// Path: doctorDetails
class Translations$doctorDetails$en {
	Translations$doctorDetails$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Doctor Details'
	String get doctorDetailsTitle => 'Doctor Details';

	/// en: 'Runing'
	String get runing => 'Runing';

	/// en: 'Ongoing'
	String get ongoing => 'Ongoing';

	/// en: 'Patient'
	String get patient => 'Patient';

	/// en: 'Service'
	String get service => 'Service';
}

// Path: navigation
class Translations$navigation$en {
	Translations$navigation$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Home'
	String get home => 'Home';

	/// en: 'Fav'
	String get favorites => 'Fav';

	/// en: 'Book'
	String get bookings => 'Book';

	/// en: 'Communicate'
	String get communicate => 'Communicate';
}

// Path: onboarding
class Translations$onboarding$en {
	Translations$onboarding$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Get Started'
	String get getStarted => 'Get Started';

	/// en: 'Next'
	String get next => 'Next';

	/// en: 'Skip'
	String get skip => 'Skip';

	late final Translations$onboarding$screens$en screens = Translations$onboarding$screens$en.internal(_root);
}

// Path: common
class Translations$common$en {
	Translations$common$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Email'
	String get email => 'Email';

	/// en: 'Password'
	String get password => 'Password';

	/// en: 'Name'
	String get name => 'Name';
}

// Path: auth.login
class Translations$auth$login$en {
	Translations$auth$login$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Welcome back'
	String get title => 'Welcome back';

	/// en: 'Sign in to access your account and manage your healthcare experience'
	String get subtitle => 'Sign in to access your account and manage your healthcare experience';

	/// en: 'Email'
	String get email => 'Email';

	/// en: 'Password'
	String get password => 'Password';

	/// en: 'Login'
	String get loginButton => 'Login';

	/// en: 'Forgot password'
	String get forgotPassword => 'Forgot password';

	/// en: 'Don't have an account?'
	String get noAccount => 'Don\'t have an account?';

	/// en: 'Join us'
	String get joinUs => 'Join us';

	/// en: 'Google'
	String get google => 'Google';
}

// Path: auth.register
class Translations$auth$register$en {
	Translations$auth$register$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Create Account'
	String get title => 'Create Account';

	/// en: 'Sign up to get started with your account'
	String get subtitle => 'Sign up to get started with your account';

	/// en: 'Name'
	String get name => 'Name';

	/// en: 'Email'
	String get email => 'Email';

	/// en: 'Password'
	String get password => 'Password';

	/// en: 'Register'
	String get registerButton => 'Register';

	/// en: 'Already have an account?'
	String get hasAccount => 'Already have an account?';

	/// en: 'Login'
	String get login => 'Login';
}

// Path: auth.forget
class Translations$auth$forget$en {
	Translations$auth$forget$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Enter your email for verification'
	String get subtitle => 'Enter your email for verification';

	/// en: 'Send'
	String get send => 'Send';
}

// Path: auth.role
class Translations$auth$role$en {
	Translations$auth$role$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Choose your role'
	String get title => 'Choose your role';

	/// en: 'The selected role determines the experience and available features'
	String get subtitle => 'The selected role determines the experience and available features';

	/// en: 'Continue'
	String get continueButton => 'Continue';

	late final Translations$auth$role$patient$en patient = Translations$auth$role$patient$en.internal(_root);
	late final Translations$auth$role$admin$en admin = Translations$auth$role$admin$en.internal(_root);
}

// Path: onboarding.screens
class Translations$onboarding$screens$en {
	Translations$onboarding$screens$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final Translations$onboarding$screens$screen1$en screen1 = Translations$onboarding$screens$screen1$en.internal(_root);
	late final Translations$onboarding$screens$screen2$en screen2 = Translations$onboarding$screens$screen2$en.internal(_root);
	late final Translations$onboarding$screens$screen3$en screen3 = Translations$onboarding$screens$screen3$en.internal(_root);
}

// Path: auth.role.patient
class Translations$auth$role$patient$en {
	Translations$auth$role$patient$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Patient'
	String get title => 'Patient';

	/// en: 'Find doctors, book appointments, and manage your medical records.'
	String get description => 'Find doctors, book appointments, and manage your medical records.';
}

// Path: auth.role.admin
class Translations$auth$role$admin$en {
	Translations$auth$role$admin$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Admin'
	String get title => 'Admin';

	/// en: 'Manage doctors, appointments, users, and the platform.'
	String get description => 'Manage doctors, appointments, users, and the platform.';
}

// Path: onboarding.screens.screen1
class Translations$onboarding$screens$screen1$en {
	Translations$onboarding$screens$screen1$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Find Trusted Doctors'
	String get title => 'Find Trusted Doctors';

	/// en: 'Browse through our network of verified healthcare professionals and find the perfect doctor for your needs.'
	String get description => 'Browse through our network of verified healthcare professionals and find the perfect doctor for your needs.';
}

// Path: onboarding.screens.screen2
class Translations$onboarding$screens$screen2$en {
	Translations$onboarding$screens$screen2$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Choose Best Doctors'
	String get title => 'Choose Best Doctors';

	/// en: 'Compare doctors by specialty, ratings, and availability to make informed decisions about your healthcare.'
	String get description => 'Compare doctors by specialty, ratings, and availability to make informed decisions about your healthcare.';
}

// Path: onboarding.screens.screen3
class Translations$onboarding$screens$screen3$en {
	Translations$onboarding$screens$screen3$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Easy Appointments'
	String get title => 'Easy Appointments';

	/// en: 'Book appointments instantly, manage your schedule, and receive reminders for your upcoming visits.'
	String get description => 'Book appointments instantly, manage your schedule, and receive reminders for your upcoming visits.';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'app.name' => 'Doctor Hunt',
			'auth.login.title' => 'Welcome back',
			'auth.login.subtitle' => 'Sign in to access your account and manage your healthcare experience',
			'auth.login.email' => 'Email',
			'auth.login.password' => 'Password',
			'auth.login.loginButton' => 'Login',
			'auth.login.forgotPassword' => 'Forgot password',
			'auth.login.noAccount' => 'Don\'t have an account?',
			'auth.login.joinUs' => 'Join us',
			'auth.login.google' => 'Google',
			'auth.register.title' => 'Create Account',
			'auth.register.subtitle' => 'Sign up to get started with your account',
			'auth.register.name' => 'Name',
			'auth.register.email' => 'Email',
			'auth.register.password' => 'Password',
			'auth.register.registerButton' => 'Register',
			'auth.register.hasAccount' => 'Already have an account?',
			'auth.register.login' => 'Login',
			'auth.forget.subtitle' => 'Enter your email for verification',
			'auth.forget.send' => 'Send',
			'auth.role.title' => 'Choose your role',
			'auth.role.subtitle' => 'The selected role determines the experience and available features',
			'auth.role.continueButton' => 'Continue',
			'auth.role.patient.title' => 'Patient',
			'auth.role.patient.description' => 'Find doctors, book appointments, and manage your medical records.',
			'auth.role.admin.title' => 'Admin',
			'auth.role.admin.description' => 'Manage doctors, appointments, users, and the platform.',
			'home.greeting' => 'Hi {name}!',
			'home.title' => 'Find Your Doctor',
			'home.live' => 'Live',
			'home.liveTitle' => 'Live Doctors',
			'home.PopularTitle' => 'Popular Doctor',
			'home.seeAll' => 'See all',
			'fav.favTitle' => 'Favourite Doctors',
			'book.bookTitle' => 'Find Doctors',
			'book.bookButton' => 'Book Now',
			'book.appointmentTitle' => 'Appointment',
			'book.availableTime' => 'Available Time',
			'doctorDetails.doctorDetailsTitle' => 'Doctor Details',
			'doctorDetails.runing' => 'Runing',
			'doctorDetails.ongoing' => 'Ongoing',
			'doctorDetails.patient' => 'Patient',
			'doctorDetails.service' => 'Service',
			'navigation.home' => 'Home',
			'navigation.favorites' => 'Fav',
			'navigation.bookings' => 'Book',
			'navigation.communicate' => 'Communicate',
			'onboarding.getStarted' => 'Get Started',
			'onboarding.next' => 'Next',
			'onboarding.skip' => 'Skip',
			'onboarding.screens.screen1.title' => 'Find Trusted Doctors',
			'onboarding.screens.screen1.description' => 'Browse through our network of verified healthcare professionals and find the perfect doctor for your needs.',
			'onboarding.screens.screen2.title' => 'Choose Best Doctors',
			'onboarding.screens.screen2.description' => 'Compare doctors by specialty, ratings, and availability to make informed decisions about your healthcare.',
			'onboarding.screens.screen3.title' => 'Easy Appointments',
			'onboarding.screens.screen3.description' => 'Book appointments instantly, manage your schedule, and receive reminders for your upcoming visits.',
			'common.email' => 'Email',
			'common.password' => 'Password',
			'common.name' => 'Name',
			_ => null,
		};
	}
}
