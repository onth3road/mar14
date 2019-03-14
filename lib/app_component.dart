import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';

import 'package:layouts/app_component.template.dart' as ng;
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_button/material_fab.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:angular_components/theme/dark_theme.dart';
import 'package:layouts/src/route_paths.dart';
import 'package:layouts/src/routes.dart';
import 'package:layouts/src/stepper/stepper_component.dart';
// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.scss.css'],
  templateUrl: 'app_component.html',
  directives: [ 
    DarkThemeDirective,
    MaterialButtonComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    Stepper,
    coreDirectives],
  preserveWhitespace: true,
  providers: [materialProviders],
  exports: [RoutePaths, Routes],
)


class AppComponent {

  final Router _router;
  AppComponent(this._router);

  void gotoFirstTime() {
    print(RoutePaths.firstTime.toUrl());
    var ret = _router.navigate(RoutePaths.firstTime.toUrl());
    print(ret.toString());
  } 
}
