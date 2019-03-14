import 'package:angular/angular.dart';

@Component (
  selector: 'house-brief',
  templateUrl: 'brief_component.html',
  styleUrls: ['brief_component.scss.css']
)

class Briefs {

 
}

class HouseBrief {
  String addr;
  num fund;
  num interest;
  num fundFreezed;
  num interestFreezed; 
  
}