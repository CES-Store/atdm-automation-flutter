import 'package:patrol/patrol.dart';

void main() {
  patrolTest('Login Exitoso', (PatrolIntegrationTester $) async {
    await $('email123_field').enterText('usuario@test.com');
    await $('continue_button').tap();
    await $('password_field').enterText('123456');
    await $('continue_button').tap();
    await $('perfil_screen').waitUntilVisible();
  });

  patrolTest('Login con credenciales invalidas',
      (PatrolIntegrationTester $) async {
    await $('email123_field').enterText('usuario@test.com');
    await $('continue_button').tap();
    await $('password_field').enterText('999999');
    await $('continue_button').tap();
    await $('Credenciales invalidas').waitUntilVisible();
  });
}
