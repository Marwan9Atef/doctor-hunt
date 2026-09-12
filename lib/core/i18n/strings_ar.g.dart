///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsAr extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsAr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ar,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ar>.
	final TranslationMetadata<AppLocale, Translations> _meta;
	@override TranslationMetadata<AppLocale, Translations> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key) ?? super[key];

	late final TranslationsAr _root = this; // ignore: unused_field

	@override 
	TranslationsAr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsAr(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$app$ar app = _Translations$app$ar._(_root);
	@override late final _Translations$auth$ar auth = _Translations$auth$ar._(_root);
	@override late final _Translations$home$ar home = _Translations$home$ar._(_root);
	@override late final _Translations$fav$ar fav = _Translations$fav$ar._(_root);
	@override late final _Translations$book$ar book = _Translations$book$ar._(_root);
	@override late final _Translations$doctorDetails$ar doctorDetails = _Translations$doctorDetails$ar._(_root);
	@override late final _Translations$navigation$ar navigation = _Translations$navigation$ar._(_root);
	@override late final _Translations$onboarding$ar onboarding = _Translations$onboarding$ar._(_root);
	@override late final _Translations$common$ar common = _Translations$common$ar._(_root);
}

// Path: app
class _Translations$app$ar extends Translations$app$en {
	_Translations$app$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'دكتور هانت';
}

// Path: auth
class _Translations$auth$ar extends Translations$auth$en {
	_Translations$auth$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$auth$login$ar login = _Translations$auth$login$ar._(_root);
	@override late final _Translations$auth$register$ar register = _Translations$auth$register$ar._(_root);
	@override late final _Translations$auth$forget$ar forget = _Translations$auth$forget$ar._(_root);
	@override late final _Translations$auth$role$ar role = _Translations$auth$role$ar._(_root);
}

// Path: home
class _Translations$home$ar extends Translations$home$en {
	_Translations$home$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get greeting => 'مرحباً {name}!';
	@override String get title => 'ابحث عن طبيبك';
	@override String get live => 'مباشر';
	@override String get liveTitle => 'أطباء مباشر';
	@override String get PopularTitle => 'اطباء مشهورين';
	@override String get seeAll => 'عرض الكل';
	@override String get adminTitle => 'دكتور';
	@override late final _Translations$home$adminInfo$ar adminInfo = _Translations$home$adminInfo$ar._(_root);
}

// Path: fav
class _Translations$fav$ar extends Translations$fav$en {
	_Translations$fav$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get favTitle => 'دكتورك المفضل';
}

// Path: book
class _Translations$book$ar extends Translations$book$en {
	_Translations$book$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get bookTitle => 'اعثر على أطباء';
	@override String get bookButton => 'احجز الآن';
	@override String get appointmentTitle => 'الحجوزات';
	@override String get availableTime => 'الوقت المتاح';
}

// Path: doctorDetails
class _Translations$doctorDetails$ar extends Translations$doctorDetails$en {
	_Translations$doctorDetails$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get doctorDetailsTitle => 'تفاصيل عن الدكتور';
	@override String get runing => 'جارية';
	@override String get ongoing => 'مستمرة';
	@override String get patient => 'مرضى';
	@override String get service => 'خدمات';
}

// Path: navigation
class _Translations$navigation$ar extends Translations$navigation$en {
	_Translations$navigation$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get home => 'الرئيسية';
	@override String get favorites => 'المفضلة';
	@override String get bookings => 'الحجوزات';
	@override String get communicate => 'التواصل';
	@override String get adminSetting => 'الإعدادات';
}

// Path: onboarding
class _Translations$onboarding$ar extends Translations$onboarding$en {
	_Translations$onboarding$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get getStarted => 'ابدأ الآن';
	@override String get next => 'التالي';
	@override String get skip => 'تخطي';
	@override late final _Translations$onboarding$screens$ar screens = _Translations$onboarding$screens$ar._(_root);
}

// Path: common
class _Translations$common$ar extends Translations$common$en {
	_Translations$common$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get email => 'البريد الإلكتروني';
	@override String get password => 'كلمة المرور';
	@override String get name => 'الاسم';
}

// Path: auth.login
class _Translations$auth$login$ar extends Translations$auth$login$en {
	_Translations$auth$login$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مرحباً بعودتك';
	@override String get subtitle => 'سجل الدخول للوصول إلى حسابك وإدارة تجربتك الصحية';
	@override String get email => 'البريد الإلكتروني';
	@override String get password => 'كلمة المرور';
	@override String get loginButton => 'تسجيل الدخول';
	@override String get forgotPassword => 'نسيت كلمة المرور';
	@override String get noAccount => 'ليس لديك حساب؟';
	@override String get joinUs => 'انضم إلينا';
	@override String get google => 'جوجل';
	@override String get successMessage => 'تم تسجيل الدخول بنجاح';
}

// Path: auth.register
class _Translations$auth$register$ar extends Translations$auth$register$en {
	_Translations$auth$register$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إنشاء حساب';
	@override String get subtitle => 'سجل للبدء مع حسابك';
	@override String get name => 'الاسم';
	@override String get email => 'البريد الإلكتروني';
	@override String get password => 'كلمة المرور';
	@override String get registerButton => 'تسجيل';
	@override String get hasAccount => 'لديك حساب بالفعل؟';
	@override String get login => 'تسجيل الدخول';
	@override String get successMessage => 'تم التسجيل بنجاح';
}

// Path: auth.forget
class _Translations$auth$forget$ar extends Translations$auth$forget$en {
	_Translations$auth$forget$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'أدخل بريدك الإلكتروني لإجراء عملية التحقق';
	@override String get send => 'إرسال';
}

// Path: auth.role
class _Translations$auth$role$ar extends Translations$auth$role$en {
	_Translations$auth$role$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اختر دورك';
	@override String get subtitle => 'الدور المحدد يحدد التجربة والميزات المتاحة';
	@override String get continueButton => 'متابعة';
	@override late final _Translations$auth$role$patient$ar patient = _Translations$auth$role$patient$ar._(_root);
	@override late final _Translations$auth$role$admin$ar admin = _Translations$auth$role$admin$ar._(_root);
}

// Path: home.adminInfo
class _Translations$home$adminInfo$ar extends Translations$home$adminInfo$en {
	_Translations$home$adminInfo$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get totalDoctors => 'إجمالي الأطباء';
	@override String get activeDoctors => 'الأطباء النشطين';
}

// Path: onboarding.screens
class _Translations$onboarding$screens$ar extends Translations$onboarding$screens$en {
	_Translations$onboarding$screens$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$screens$screen1$ar screen1 = _Translations$onboarding$screens$screen1$ar._(_root);
	@override late final _Translations$onboarding$screens$screen2$ar screen2 = _Translations$onboarding$screens$screen2$ar._(_root);
	@override late final _Translations$onboarding$screens$screen3$ar screen3 = _Translations$onboarding$screens$screen3$ar._(_root);
}

// Path: auth.role.patient
class _Translations$auth$role$patient$ar extends Translations$auth$role$patient$en {
	_Translations$auth$role$patient$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مريض';
	@override String get description => 'ابحث عن الأطباء، احجز المواعيد، وأدر سجلاتك الطبية.';
}

// Path: auth.role.admin
class _Translations$auth$role$admin$ar extends Translations$auth$role$admin$en {
	_Translations$auth$role$admin$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مسؤول';
	@override String get description => 'إدارة الأطباء والمواعيد والمستخدمين والمنصة.';
}

// Path: onboarding.screens.screen1
class _Translations$onboarding$screens$screen1$ar extends Translations$onboarding$screens$screen1$en {
	_Translations$onboarding$screens$screen1$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ابحث عن أطباء موثوقين';
	@override String get description => 'تصفح شبكة أطبائنا المعتمدين وابحث عن الطبيب المثالي لاحتياجاتك.';
}

// Path: onboarding.screens.screen2
class _Translations$onboarding$screens$screen2$ar extends Translations$onboarding$screens$screen2$en {
	_Translations$onboarding$screens$screen2$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اختر أفضل الأطباء';
	@override String get description => 'قارن بين الأطباء حسب التخصص والتقييمات والتوافر لاتخاذ قرارات مستنيرة بشأن رعايتك الصحية.';
}

// Path: onboarding.screens.screen3
class _Translations$onboarding$screens$screen3$ar extends Translations$onboarding$screens$screen3$en {
	_Translations$onboarding$screens$screen3$ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مواعيد سهلة';
	@override String get description => 'احجز المواعيد فوراً، وأدر جدولك، وتلق تذكيرات لزياراتك القادمة.';
}

/// The flat map containing all translations for locale <ar>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsAr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'app.name' => 'دكتور هانت',
			'auth.login.title' => 'مرحباً بعودتك',
			'auth.login.subtitle' => 'سجل الدخول للوصول إلى حسابك وإدارة تجربتك الصحية',
			'auth.login.email' => 'البريد الإلكتروني',
			'auth.login.password' => 'كلمة المرور',
			'auth.login.loginButton' => 'تسجيل الدخول',
			'auth.login.forgotPassword' => 'نسيت كلمة المرور',
			'auth.login.noAccount' => 'ليس لديك حساب؟',
			'auth.login.joinUs' => 'انضم إلينا',
			'auth.login.google' => 'جوجل',
			'auth.login.successMessage' => 'تم تسجيل الدخول بنجاح',
			'auth.register.title' => 'إنشاء حساب',
			'auth.register.subtitle' => 'سجل للبدء مع حسابك',
			'auth.register.name' => 'الاسم',
			'auth.register.email' => 'البريد الإلكتروني',
			'auth.register.password' => 'كلمة المرور',
			'auth.register.registerButton' => 'تسجيل',
			'auth.register.hasAccount' => 'لديك حساب بالفعل؟',
			'auth.register.login' => 'تسجيل الدخول',
			'auth.register.successMessage' => 'تم التسجيل بنجاح',
			'auth.forget.subtitle' => 'أدخل بريدك الإلكتروني لإجراء عملية التحقق',
			'auth.forget.send' => 'إرسال',
			'auth.role.title' => 'اختر دورك',
			'auth.role.subtitle' => 'الدور المحدد يحدد التجربة والميزات المتاحة',
			'auth.role.continueButton' => 'متابعة',
			'auth.role.patient.title' => 'مريض',
			'auth.role.patient.description' => 'ابحث عن الأطباء، احجز المواعيد، وأدر سجلاتك الطبية.',
			'auth.role.admin.title' => 'مسؤول',
			'auth.role.admin.description' => 'إدارة الأطباء والمواعيد والمستخدمين والمنصة.',
			'home.greeting' => 'مرحباً {name}!',
			'home.title' => 'ابحث عن طبيبك',
			'home.live' => 'مباشر',
			'home.liveTitle' => 'أطباء مباشر',
			'home.PopularTitle' => 'اطباء مشهورين',
			'home.seeAll' => 'عرض الكل',
			'home.adminTitle' => 'دكتور',
			'home.adminInfo.totalDoctors' => 'إجمالي الأطباء',
			'home.adminInfo.activeDoctors' => 'الأطباء النشطين',
			'fav.favTitle' => 'دكتورك المفضل',
			'book.bookTitle' => 'اعثر على أطباء',
			'book.bookButton' => 'احجز الآن',
			'book.appointmentTitle' => 'الحجوزات',
			'book.availableTime' => 'الوقت المتاح',
			'doctorDetails.doctorDetailsTitle' => 'تفاصيل عن الدكتور',
			'doctorDetails.runing' => 'جارية',
			'doctorDetails.ongoing' => 'مستمرة',
			'doctorDetails.patient' => 'مرضى',
			'doctorDetails.service' => 'خدمات',
			'navigation.home' => 'الرئيسية',
			'navigation.favorites' => 'المفضلة',
			'navigation.bookings' => 'الحجوزات',
			'navigation.communicate' => 'التواصل',
			'navigation.adminSetting' => 'الإعدادات',
			'onboarding.getStarted' => 'ابدأ الآن',
			'onboarding.next' => 'التالي',
			'onboarding.skip' => 'تخطي',
			'onboarding.screens.screen1.title' => 'ابحث عن أطباء موثوقين',
			'onboarding.screens.screen1.description' => 'تصفح شبكة أطبائنا المعتمدين وابحث عن الطبيب المثالي لاحتياجاتك.',
			'onboarding.screens.screen2.title' => 'اختر أفضل الأطباء',
			'onboarding.screens.screen2.description' => 'قارن بين الأطباء حسب التخصص والتقييمات والتوافر لاتخاذ قرارات مستنيرة بشأن رعايتك الصحية.',
			'onboarding.screens.screen3.title' => 'مواعيد سهلة',
			'onboarding.screens.screen3.description' => 'احجز المواعيد فوراً، وأدر جدولك، وتلق تذكيرات لزياراتك القادمة.',
			'common.email' => 'البريد الإلكتروني',
			'common.password' => 'كلمة المرور',
			'common.name' => 'الاسم',
			_ => null,
		};
	}
}
