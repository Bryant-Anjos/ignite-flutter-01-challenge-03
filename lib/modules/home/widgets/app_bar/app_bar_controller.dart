import 'package:mobx/mobx.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/repositories/home_repository_mock.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_state.dart';

part 'app_bar_controller.g.dart';

class AppBarController = _AppBarControllerBase with _$AppBarController;

abstract class _AppBarControllerBase with Store {
  late HomeRepository repository;

  @observable
  AppBarState state = AppBarStateEmpty();

  _AppBarControllerBase({HomeRepository? repository}) {
    this.repository = repository ?? HomeRepositoryMock();
  }

  @action
  Future<void> getDashboard() async {
    state = AppBarStateLoading();
    try {
      final response = await repository.getDashboard();
      state = AppBarStateSuccess(dashboard: response);
    } catch (e) {
      state = AppBarStateFailure(message: e.toString());
    }
  }
}
