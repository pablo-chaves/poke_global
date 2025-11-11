import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Llama esto al inicio de cada test de widgets o unit para inicializar bindings
/// y limpiar SharedPreferences mockeadas.
Future<void> setupTestEnvironment({Map<String, Object> initialPrefs = const {}}) async {
  TestWidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues(initialPrefs);
}
