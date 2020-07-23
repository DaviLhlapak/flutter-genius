class Scores{
  String _name;
  String _score;

  Scores({String name, String score}){this._name=name;this._score=score;}

  String get name => _name;

  String get score => _score;

  factory Scores.fromJson(Map<String, dynamic> json) => Scores(
    name: json["name"],
    score: json["score"].toString(),
  );

  static List<Scores> fromJsonList(List list){
    if(list == null) return null;
    return list.map<Scores>((item)=>Scores.fromJson(item)).toList();
  }
}