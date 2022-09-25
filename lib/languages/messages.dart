import 'package:app5/languages/en_lang.dart';
import 'package:app5/languages/id_lang.dart';
import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys =>
      {'en_US': enLang, 'id_ID': idLang};
}
