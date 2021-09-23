import 'package:split_it/modules/login/login_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/models/user_model.dart';

class LoginServiceMock implements LoginService {
  @override
  Future<UserModel> googleSign() async {
    return UserModel(email: "gabriel.savio@rocketseat.team", id: "id");
  }
}
void main () {
  late LoginController controller;

  setUp(() {
    controller = LoginController(
      onUpdate: () {},
      service: LoginServiceImpl(),
    );
  });

  test("Testando o google signin retornando sucesso", () async {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());

    final states = <LoginState>[];

    controller.listen((state) => states.add(state));

    await controller.googleSignIn();

    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginStateSuccess>());
    expect(states.length, 2);
  });

  test("Testando o google signin retornando erro", () async {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());

    final states = <LoginState>[];

    controller.listen((state) => states.add(state));

    await controller.googleSignIn();

    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginStateFailure>());
    expect(states.length, 2);
  });
}