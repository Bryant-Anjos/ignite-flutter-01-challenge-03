import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart' as mobx;
import 'package:mocktail/mocktail.dart';
import 'package:split_it/modules/home/models/dashboard_model.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_controller.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_state.dart';

class HomeRepositoryMock extends Mock implements HomeRepository {}

void main() {
  late AppBarController controller;
  late HomeRepository repository;

  setUp(() {
    repository = HomeRepositoryMock();
    controller = AppBarController(repository: repository);
  });

  test("Testing the getDashboard - Success", () async {
    expect(controller.state, isInstanceOf<AppBarStateEmpty>());

    final states = <AppBarState>[];
    mobx.autorun((_) {
      states.add(controller.state);
    });

    when(repository.getDashboard).thenAnswer(
      (_) async => DashboardModel(
        send: 100,
        receive: 50,
      ),
    );

    await controller.getDashboard();

    expect(states[0], isInstanceOf<AppBarStateEmpty>());
    expect(states[1], isInstanceOf<AppBarStateLoading>());
    expect(states[2], isInstanceOf<AppBarStateSuccess>());
    expect(states.length, 3);
  });

  test("Testing the getDashboard - Failure", () async {
    expect(controller.state, isInstanceOf<AppBarStateEmpty>());

    final states = <AppBarState>[];
    mobx.autorun((_) {
      states.add(controller.state);
    });

    when(repository.getDashboard).thenThrow("An error ocurred");
    await controller.getDashboard();

    expect(states[0], isInstanceOf<AppBarStateEmpty>());
    expect(states[1], isInstanceOf<AppBarStateFailure>());
    expect((states[1] as AppBarStateFailure).message, "An error ocurred");
    expect(states.length, 2);
  });
}
