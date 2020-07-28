import 'package:il_tano_app/interfaces/ivalidator.dart';

class RequiredValidator implements IValidator<String> {
  @override
  String validate(String value) {
    if (value == null || value.isEmpty) {
      return "Este campo no puede ser vacío.";
    }

    return null;
  }
}
