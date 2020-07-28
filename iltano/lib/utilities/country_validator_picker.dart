import 'package:il_tano_app/interfaces/icountry_dependent_validator.dart';
import 'package:il_tano_app/interfaces/ivalidator.dart';
import 'package:il_tano_app/utilities/uruguay_document_validator.dart';
class CountryValidatorPicker {
  List<ICountryDependentValidator<String>> _documentValidators = [new UruguayDocumentValidator()];
  CountryValidatorPicker();

  IValidator<String> getDocumentValidatorForCountry(String country) {
    var validator = _documentValidators.firstWhere((validator) => validator.getCountry().toLowerCase() == country?.toLowerCase(), orElse: () => null);
    return validator;
  }
}
