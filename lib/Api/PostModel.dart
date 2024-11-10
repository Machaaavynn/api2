class PostModel {
  final String strTeam;
  final String strBadge;
  final String strDescriptionEN;
  final String intFormedYear;
  final String strLeague;
  final String strStadium;
  final String strLocation;

  PostModel({
    required this.strTeam,
    required this.strBadge,
    required this.strDescriptionEN,
    required this.intFormedYear,
    required this.strLeague,
    required this.strStadium,
    required this.strLocation,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      strTeam: json['strTeam'],
      strBadge: json['strBadge'],
      strDescriptionEN: json['strDescriptionEN'] ?? 'No description available',
      intFormedYear: json['intFormedYear'] ?? 'Unknown',
      strLeague: json['strLeague'] ?? 'Unknown League',
      strStadium:json['strStadium'] ??'Unknow Stadium',
      strLocation:json['strLocation'] ?? 'Unknow Location',
    );
  }

  get intstrStadium => null;
}
