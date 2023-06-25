
class User{
  int id;
  String name;
  String gender;
  DateTime dob;
  String occupation;
  String physicalActivity;
  double weight;
  double height;
  String residence;
  String education;
  String typeOfDM;
  String durationBeforeDx;
  String wklySugarLevel;

  User.fromJson(Map json)
      :id=json['id'],
      name=json['name'],
      gender = json['gender'],
      dob = json['dob'],
  occupation=json['occupation'],
  physicalActivity = json['activity'],
  weight=json['weight'],
  height = json['height'],
  residence = json['residence'],
  education = json['education'],
  typeOfDM = json['dm_type'],
  durationBeforeDx = json['time_to_dx'],
  wklySugarLevel = json['weekly_sugar'];

User(
    this.id,this.name,this.gender, this.dob, this.occupation,
    this.physicalActivity,this.weight,this.height,this.residence,
    this.education,this.typeOfDM,
    this.durationBeforeDx,this.wklySugarLevel);
  Map<String, Object?> toMap() {
    var map = <String, Object?>{
      'name':name, 'gender':gender,
      'dob':dob,'occupation':occupation,
      'activity':physicalActivity,'weight':weight,
      'height':height,
      'residence':residence,'education':education,
      'dm_type':typeOfDM,
      'time_to_dx':durationBeforeDx,'weekly_sugar':wklySugarLevel
    };
    if (id != null) {
      map["id"] = id;
    }
    return map;
  }



}
class Meals{
  int? id;
  String? mealName;
  DateTime? mealDate;
  String? foodItems;
  String? recommendations;
  Map<dynamic, dynamic> toMap(){
       return {
         "id":id,
         "name":mealName,
         "date_time":mealDate,
         "food_items":foodItems,
         "recommendations":recommendations
       };
  }

  Meals.fromMap(Map<dynamic, dynamic> maps){
    id = maps['id'];
    mealName = maps["name"];
    mealDate = maps["date_time"];
    foodItems = maps["food_items"];
    recommendations = maps["recommendations"];
  }
}

class Medications{
  int? id;
  String? med;
  String? root;
  String? dose;
  DateTime? startDate;
  DateTime? endDate;

  Map<dynamic, dynamic> toMap(){
    return {
      "id":id,
      "name":med,
      "date_time":root,
      "food_items":dose,
      "start_date":startDate,
      'end_date':endDate
    };
  }

  Medications.fromMap(Map<dynamic, dynamic> maps){
    id = maps['id'];
    med = maps["medication"];
    root = maps["root"];
    dose = maps["dose"];
    startDate = maps["start_date"];
    endDate = maps["end_date"];
  }

}

class Comorbidities{
  int id;
  String diagnosis;
  DateTime dxDate;
  Comorbidities.fromMap(Map<dynamic, dynamic> maps):
    id = maps["id"],
    diagnosis = maps["diagnosis"],
    dxDate = maps["dx_date"];

  Comorbidities(this.id,this.diagnosis, this.dxDate);


}

class SugarLevels{
  int id;
  String sugarLevel;
  DateTime recordDate;
  String randomOrFasting;
  String recommendations;
  SugarLevels(this.id,this.sugarLevel, this.recordDate, this.randomOrFasting, this.recommendations);
  SugarLevels.fromMap(Map<dynamic, dynamic> maps):
    id = maps["id"],
    sugarLevel=maps["sugar_level"],
  recordDate = maps["record_date"],
  randomOrFasting = maps["rand_fast"],
  recommendations = maps["recommendations"];

}