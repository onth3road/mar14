import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/focus/focus.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:angular_components/material_input/material_number_accessor.dart';
import 'package:angular_components/material_stepper/material_step.dart';
import 'package:angular_components/material_stepper/material_stepper.dart';
import 'package:angular_components/material_tooltip/material_tooltip.dart';
import 'package:angular_components/model/action/async_action.dart';
import 'package:angular_components/utils/angular/scroll_host/angular_2.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_components/material_input/material_input_multiline.dart';

typedef String ValidityCheck(String inputText);
@Directive(
  selector: '[textValidator]',
  providers: [Provider(NG_VALIDATORS, useExisting: TextValidator, multi: true)],
)

class TextValidator {
  @Input('textValidator')
  String text;
  Map<String, dynamic> call(AbstractControl c) {
    return (c.value != null && text != null && c.value.contains(text))
        ? {'material-input-error': 'cannot contain $text'}
        : null;
  }
}

@Component(
  selector: 'stepper',
  styleUrls: ['stepper_component.scss.css'],
  templateUrl: 'stepper_component.html',
  providers: [scrollHostProviders],
  directives: [
    MaterialStepperComponent, 
    StepDirective,
    SummaryDirective,
    MaterialButtonComponent,
    NgFor,
    formDirectives,
    AutoFocusDirective,
    MaterialButtonComponent,
    MaterialIconComponent,
    materialInputDirectives,
    MaterialMultilineInputComponent,
    materialNumberInputDirectives,
    MaterialPaperTooltipComponent,
    MaterialTooltipTargetDirective,
    NgIf,
    TextValidator,
  ],
  //providers: [ClassProvider(TodoListService)],
)

class Stepper {

  ValidityCheck get checkValid => demoValidator;

  void validDelayedCheck(AsyncAction<bool> action) {
    action.cancelIf(Future.delayed(const Duration(seconds: 1), () {
      // Don't cancel
      return false;
    }));
  }

  bool showButton = false;

  void toggleContinue() {
    showButton = !showButton;
  }

  String demoValidator(String inputText) {
    if (inputText.isEmpty) return null;
    //if (inputText.length < 18) return 'Input should be at least 5 characters.';
    return null;
  }

}