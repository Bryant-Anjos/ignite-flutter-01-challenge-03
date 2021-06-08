import 'package:mobx/mobx.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';

class LoginController {
  final _state = Observable<LoginState>(LoginStateEmpty());
  LoginState get state => _state.value;
  set state(LoginState state) => _state.value = state;

  final LoginService service;
  final _actionController = ActionController();

  LoginController({
    required this.service,
  });

  Future<void> googleSignIn() async {
    _actionController.startAction(name: "LoginController.googleSignIn");
    final startTime = DateTime.now();

    try {
      state = LoginStateLoading();
      final user = await service.googleSignIn();
      state = LoginStateSuccess(user: user);
    } catch (error) {
      state = LoginStateFailure(message: error.toString());
    }

    _actionController.endAction(
      ActionRunInfo(
        name: "LoginController.googleSignIn",
        startTime: startTime,
      ),
    );
  }
}
