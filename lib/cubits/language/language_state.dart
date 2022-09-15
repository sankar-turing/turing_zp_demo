part of 'language_cubit.dart';

class LanguageState extends Equatable {
  const LanguageState({
    this.locale,
  });

  final Locale? locale;

  LanguageState copyWith({
    Locale? locale,
  }) {
    return LanguageState(
      locale: locale ?? this.locale,
    );
  }

  @override
  List<Object?> get props => [
        locale,
      ];
}
