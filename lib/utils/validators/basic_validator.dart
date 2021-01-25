import 'package:string_validator/string_validator.dart';

String basicValidator(String text) {
  if (text == null || text.isEmpty) {
    return 'The text is empty';
  } else if (!isAscii(text)) {
    return 'You are using unsupported symbols';
  } else {
    return null;
  }
}
