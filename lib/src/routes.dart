import 'package:angular_router/angular_router.dart';
import 'package:layouts/src/stepper/stepper_component.template.dart' as stepper_template;
import 'route_paths.dart';

export 'route_paths.dart';

class Routes {
  static final firstTime = RouteDefinition(
    routePath: RoutePaths.firstTime, 
    component: stepper_template.StepperNgFactory,
  );

  static final all = <RouteDefinition>[
    firstTime,
  ];
}