import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UserJwtControllerApi
void main() {
  final instance = Openapi().getUserJwtControllerApi();

  group(UserJwtControllerApi, () {
    //Future<JWTToken> authorize(LoginVM loginVM) async
    test('test authorize', () async {
      // TODO
    });

  });
}
